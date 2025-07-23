# 📄 Scripts for PDF/HTML Generation

This folder contains scripts to convert the entire enterprise template documentation into unified formats for distribution and archiving.

## 🚀 Available Options

### 1. **HTML Script (Recommended)** ✅
**File**: `generate-html.ps1`
**Requirements**: PowerShell only (native to Windows)
**Output**: Professional HTML file convertible to PDF

```powershell
# Basic execution
.\scripts\generate-html.ps1

# With custom parameters
.\scripts\generate-html.ps1 -OutputPath ".\MyProject-Documentation.html" -Title "My Project Documentation"
```

**Advantages**:
- ✅ No additional installations required
- ✅ Integrated professional CSS
- ✅ Optimized for printing/PDF
- ✅ Works immediately

**How to convert to PDF**:
1. Run the script → generates an HTML file
2. Open the HTML in a browser (Chrome/Edge)
3. Ctrl+P → "Save as PDF"
4. Settings: A4, minimum margins, include graphics

### 2. **Pandoc Script (Advanced)** 🔧
**File**: `generate-pdf.ps1`
**Requirements**: Pandoc + LaTeX engine
**Output**: High-quality native PDF

```powershell
# Install Pandoc before use
winget install pandoc

# Basic execution
.\scripts\generate-pdf.ps1

# With diagrams included (requires pandoc-plantuml)
.\scripts\generate-pdf.ps1 -WithDiagrams

# With custom parameters
.\scripts\generate-pdf.ps1 -OutputPath ".\enterprise-docs.pdf" -Title "Enterprise Documentation" -Verbose
```

**Advantages**:
- ✅ Professional quality native PDF
- ✅ Automatic section numbering
- ✅ Clickable table of contents
- ✅ LaTeX support for advanced formatting
- ✅ Ability to include PlantUML diagrams

## 🎯 Quick Execution (VS Code)

### Via Task Runner
1. **Ctrl+Shift+P** → "Tasks: Run Task"
2. Select:
   - `Generate Documentation HTML` (simpler)
   - `Generate Documentation PDF (Pandoc)` (requires Pandoc)

### Via Integrated Terminal
```powershell
# HTML method (always works)
.\scripts\generate-html.ps1

# Pandoc method (if installed)
.\scripts\generate-pdf.ps1
```

## 📋 Output Structure

### Files Included in PDF/HTML
The system automatically processes all files in this order:

1. **Template Overview** (`README.md`)
2. **Project Definition** (folder 01-)
   - Project Description
   - Stakeholders Analysis
   - SMART Objectives
   - Project Scope
   - Risk Register
3. **Requirements Management** (folder 02-)
   - User Stories
   - Functional Requirements
   - Non-Functional Requirements
   - Acceptance Criteria
4. **Behavioral Design** (folder 03-)
   - Use Case Diagrams
   - Activity Diagrams
   - Sequence Diagrams
5. **Structural Design** (folder 04-)
   - Class Diagrams
   - Component Diagrams
6. **Database Design** (folder 05-)
   - ER Diagrams
   - Data Dictionary

## 🔧 Customization

### Modify File Order
Edit the `$fileOrder` array in the scripts to change the order or exclude sections.

### HTML Styling
Modify the `$css` variable in `generate-html.ps1` to customize the appearance.

### Pandoc Parameters
Modify the `$pandocArgs` array in `generate-pdf.ps1` for advanced LaTeX options.

## 🚨 Troubleshooting

### "Pandoc not found"
```powershell
# Install Pandoc
winget install pandoc

# Or download from: https://pandoc.org/installing.html
```

### "Execution Policy Error"
```powershell
# Temporarily enable script execution
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

# Or run with parameter
powershell -ExecutionPolicy Bypass -File .\scripts\generate-html.ps1
```

### Missing files
The script continues even if some template files do not exist, reporting the missing files.

## 📈 Output Examples

### HTML Output
- **Size**: ~500KB for complete documentation
- **Format**: Responsive, optimized for printing
- **Compatibility**: All modern browsers
- **PDF**: Direct printing → PDF of ~50-100 pages

### Pandoc PDF Output
- **Size**: ~2-5MB for complete documentation
- **Quality**: Professional with LaTeX rendering
- **Format**: A4, optimized margins
- **Length**: 50-150 pages (depending on content)

---
💡 **Tip**: Always start with the HTML method for simplicity, switch to Pandoc only if you need higher typographical quality.
