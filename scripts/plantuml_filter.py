#!/usr/bin/env python3
"""
Simple PlantUML filter for Pandoc
Processes PlantUML code blocks and converts them to images
"""

import json
import sys
import subprocess
import tempfile
import os
import base64
from pathlib import Path

def plantuml_filter(key, value, format, meta):
    """
    Process PlantUML code blocks
    """
    if key == 'CodeBlock':
        [[ident, classes, keyvals], code] = value
        
        # Check if this is a plantuml block
        if 'plantuml' in classes:
            # Get PlantUML path
            plantuml_jar = Path.home() / "tools" / "plantuml" / "plantuml.jar"
            
            if not plantuml_jar.exists():
                # Fallback: return as code block if PlantUML not found
                print(f"PlantUML not found at {plantuml_jar}", file=sys.stderr)
                return None
            
            try:
                # Create temporary files
                with tempfile.NamedTemporaryFile(mode='w', suffix='.puml', delete=False, encoding='utf-8') as puml_file:
                    # Add @startuml/@enduml if not present
                    if not code.strip().startswith('@startuml'):
                        puml_file.write('@startuml\n')
                    puml_file.write(code)
                    if not code.strip().endswith('@enduml'):
                        puml_file.write('\n@enduml')
                    puml_path = puml_file.name
                
                png_path = puml_path.replace('.puml', '.png')
                
                # Run PlantUML
                cmd = ['java', '-jar', str(plantuml_jar), '-tpng', puml_path]
                result = subprocess.run(cmd, capture_output=True, text=True)
                
                # Single concise log line
                filename = os.path.basename(puml_path)
                if result.returncode == 0 and os.path.exists(png_path):
                    print(f"✓ {filename} → PNG (exit code: {result.returncode})", file=sys.stderr)
                    
                    # For PDF output, return image reference
                    return {
                        't': 'Para',
                        'c': [
                            {
                                't': 'Image',
                                'c': [
                                    ['', [], []],  # attributes
                                    [],            # caption
                                    [png_path, ''] # src and title
                                ]
                            }
                        ]
                    }
                else:
                    error_msg = result.stderr.strip() if result.stderr else "PNG not created"
                    print(f"✗ {filename} → FAILED (exit code: {result.returncode}) - {error_msg}", file=sys.stderr)
                
                # Cleanup
                try:
                    if os.path.exists(puml_path):
                        os.unlink(puml_path)
                    # Keep PNG for now for debugging
                except:
                    pass
                    
            except Exception as e:
                print(f"Error processing PlantUML: {e}", file=sys.stderr)
                # If anything fails, return original code block
                pass
    
    return None

def main():
    """Main filter function"""
    try:
        from pandocfilters import toJSONFilter
        print("Using pandocfilters", file=sys.stderr)
        toJSONFilter(plantuml_filter)
    except ImportError:
        print("Error: pandocfilters not available", file=sys.stderr)
        print("Install with: pip install pandocfilters", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    main()
