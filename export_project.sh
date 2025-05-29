#!/bin/bash

# Script to export the project structure and content into a single text file.
# The output file can be used to provide project context to an AI.

# --- Configuration ---
# Name of the output file
OUTPUT_FILE="project_export.txt"

# Project root directory (assumes the script is run from the project's root directory)
PROJECT_ROOT="."

# Patterns for directories and files to exclude from the export.
# Add or modify patterns as needed for your project structure.
# Globs are relative to the PROJECT_ROOT.
EXCLUDE_PATTERNS=(
    "./.git/*"
    "./node_modules/*"
    "./.next/*" # Next.js build output
    "./venv/*" # Python virtual environment
    "./.env" # Environment variables file (often contains secrets)
    "./.env.*" # Other .env files
    "./env/*" # Python virtual environment (another common name)
    "./target/*" # Common for Java (Maven/Gradle) and Rust (Cargo)
    "./build/*" # Common build output directory
    "./dist/*" # Common distribution output directory
    "./*.pyc" # Python compiled files
    "./__pycache__/*" # Python cache directory
    "./.DS_Store" # macOS metadata files
    "./.idea/*" # JetBrains IDE project files
    "./.vscode/*" # VS Code settings
    "./*.log" # Log files
    "./logs/*" # Log directories
    "./tmp/*" # Temporary files
    "./temp/*" # Temporary files
    # package lock
    "./package-lock.json"
    # Exclude the output file itself and this script
    "./$OUTPUT_FILE"
    # Using $0 directly in -path might be tricky if script is called like 'bash script.sh' vs './script.sh'
    # So, using its basename assuming it's in the PROJECT_ROOT.
    "./$(basename "$0")"
)
# --- End Configuration ---

# Inform the user where the output will be saved.
echo "Exporting project to $PROJECT_ROOT/$OUTPUT_FILE" >&2
echo "Using plain text format with delimiters." >&2
echo "Excluded patterns:" >&2
for pattern in "${EXCLUDE_PATTERNS[@]}"; do
    echo "  - $pattern" >&2
done
echo "---" >&2

# Construct the find command's exclude options
# Each pattern needs its own -not -path option.
FIND_EXCLUDE_ARGS=()
for pattern in "${EXCLUDE_PATTERNS[@]}"; do
    FIND_EXCLUDE_ARGS+=(-not -path "$pattern")
done

# Clear output file or create it if it doesn't exist
> "$OUTPUT_FILE"

# Find all regular files in the project root, applying specified exclusions.
# -print0 and read -d $'\0' are used to correctly handle filenames
# that may contain spaces, newlines, or other special characters.
find "$PROJECT_ROOT" -type f "${FIND_EXCLUDE_ARGS[@]}" -print0 | while IFS= read -r -d $'\0' file_path; do
    # Log processed file to stderr for user feedback
    echo "Processing: $file_path" >&2
    
    echo "==== FILE_START ====" >> "$OUTPUT_FILE"
    echo "Path: $file_path" >> "$OUTPUT_FILE"
    echo "---- CONTENT_START ----" >> "$OUTPUT_FILE"
    
    # Append raw file content
    cat "$file_path" >> "$OUTPUT_FILE"
    
    # Ensure a newline after the content and before the CONTENT_END delimiter.
    # This helps if the file doesn't end with a newline, making the output more consistent.
    echo "" >> "$OUTPUT_FILE"
    echo "---- CONTENT_END ----" >> "$OUTPUT_FILE"
    echo "==== FILE_END ====" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE" # Add a blank line for better separation between file entries
done

echo "---" >&2
echo "Project export finished." >&2
echo "Output file: $PROJECT_ROOT/$OUTPUT_FILE" >&2

# Check if the script is in the current directory to provide accurate chmod/run instructions
if [[ "$PROJECT_ROOT" == "." && -f "$(basename "$0")" ]]; then
    SCRIPT_NAME=$(basename "$0")
    echo "To make this script executable: chmod +x $SCRIPT_NAME" >&2
    echo "To run it from the project root: ./$SCRIPT_NAME" >&2
fi 