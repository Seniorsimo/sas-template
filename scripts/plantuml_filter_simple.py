#!/usr/bin/env python3
"""
Simple working PlantUML filter for Pandoc
Focuses on reliability over performance
"""

import json
import sys
import subprocess
import tempfile
import os
import hashlib
import shutil
import atexit
from pathlib import Path

# Global stats for summary
stats = {
    'cached': 0,
    'generated': 0,
    'failed': 0
}

def print_stats():
    """Print final statistics"""
    total = stats['cached'] + stats['generated'] + stats['failed']
    if total > 0:
        print(f"PlantUML Summary: {stats['generated']} generated, {stats['cached']} cached, {stats['failed']} failed", file=sys.stderr)

# Register cleanup function
atexit.register(print_stats)

def find_plantuml():
    """Find PlantUML installation"""
    # Try PlantUML in PATH
    try:
        result = subprocess.run(['plantuml', '-version'], capture_output=True, text=True)
        if result.returncode == 0:
            return ['plantuml']
    except FileNotFoundError:
        pass
    
    # Try JAR file locations
    jar_locations = [
        Path.home() / "tools" / "plantuml" / "plantuml.jar",
        Path.cwd() / "plantuml.jar",
        Path(os.environ.get('PROGRAMFILES', '')) / "PlantUML" / "plantuml.jar"
    ]
    
    for jar_path in jar_locations:
        if jar_path.exists():
            return ['java', '-jar', str(jar_path)]
    
    return None

def get_cache_key(code):
    """Generate cache key for PlantUML code"""
    return hashlib.md5(code.encode('utf-8')).hexdigest()

def normalize_plantuml_code(code):
    """Normalize PlantUML code (add @startuml/@enduml if missing)"""
    code = code.strip()
    if not code.startswith('@startuml'):
        code = '@startuml\n' + code
    if not code.endswith('@enduml'):
        code = code + '\n@enduml'
    return code

def plantuml_filter(key, value, format, meta):
    """Process PlantUML code blocks and convert them to images"""
    if key == 'CodeBlock':
        [[ident, classes, keyvals], code] = value
        
        # Check if this is a plantuml block
        if 'plantuml' in classes:
            # Get PlantUML command
            plantuml_cmd = find_plantuml()
            if not plantuml_cmd:
                print("PlantUML not found, showing as code block", file=sys.stderr)
                return None
            
            # Setup cache
            cache_dir = Path.cwd() / ".plantuml_cache"
            cache_dir.mkdir(exist_ok=True)
            
            code_hash = get_cache_key(code)
            cache_file = cache_dir / f"{code_hash}.png"
            
            # Check cache first
            if cache_file.exists() and cache_file.stat().st_size > 0:
                try:
                    # Make sure it's not a failure marker
                    test_content = cache_file.read_bytes()[:10]
                    if not test_content.startswith(b"FAILED"):
                        stats['cached'] += 1
                        return {
                            't': 'Para',
                            'c': [
                                {
                                    't': 'Image',
                                    'c': [
                                        ['', [], []],  # attributes
                                        [],            # caption
                                        [str(cache_file), ''] # src and title
                                    ]
                                }
                            ]
                        }
                except:
                    pass
            
            # Generate new diagram
            try:
                with tempfile.NamedTemporaryFile(mode='w', suffix='.puml', delete=False, encoding='utf-8') as puml_file:
                    normalized_code = normalize_plantuml_code(code)
                    puml_file.write(normalized_code)
                    puml_path = puml_file.name
                
                png_path = puml_path.replace('.puml', '.png')
                
                # Run PlantUML
                cmd = plantuml_cmd + ['-tpng', '-charset', 'UTF-8', puml_path]
                result = subprocess.run(cmd, capture_output=True, text=True, timeout=30)
                
                if result.returncode == 0 and os.path.exists(png_path):
                    # Move to cache
                    shutil.move(png_path, cache_file)
                    stats['generated'] += 1
                    
                    return {
                        't': 'Para',
                        'c': [
                            {
                                't': 'Image',
                                'c': [
                                    ['', [], []],  # attributes
                                    [],            # caption
                                    [str(cache_file), ''] # src and title
                                ]
                            }
                        ]
                    }
                else:
                    stats['failed'] += 1
                    return None
                    
            except Exception as e:
                stats['failed'] += 1
                return None
            finally:
                # Cleanup temp files
                try:
                    if 'puml_path' in locals() and os.path.exists(puml_path):
                        os.unlink(puml_path)
                    if 'png_path' in locals() and os.path.exists(png_path):
                        os.unlink(png_path)
                except:
                    pass
    
    return None

def main():
    """Main filter function"""
    try:
        from pandocfilters import toJSONFilter
        toJSONFilter(plantuml_filter)
    except ImportError:
        print("Error: pandocfilters not available", file=sys.stderr)
        print("Install with: pip install pandocfilters", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    main()
