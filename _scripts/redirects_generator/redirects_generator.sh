#!/bin/bash

# Specify the folder containing the files
folder_path="/Users/andrii.tserkovnyi/Documents/GitHub/spryker-docs/docs/scos/dev/guidelines"

# Specify the root directory to make paths relative to
root_directory="/Users/andrii.tserkovnyi/Documents/GitHub/spryker-docs"

# Check if the folder exists
if [ ! -d "$folder_path" ]; then
    echo "Folder does not exist: $folder_path"
    exit 1
fi

# Check if the root directory exists
if [ ! -d "$root_directory" ]; then
    echo "Root directory does not exist: $root_directory"
    exit 1
fi

# Loop through each file in the folder
for file in "$folder_path"/*; do
    if [ -f "$file" ]; then
        # Get the absolute file path
        file_path=$(realpath "$file")
        
        # Get the relative file path
        relative_path=${file_path#$root_directory}
        
        # Replace ".md" with ".html" in the relative file path
        relative_path="${relative_path%.md}.html"
        
        # Get the content of the original file
        original_content=$(cat "$file")
        
        # Prepend the modified relative file path to the content
        updated_content="$relative_path"$'\n'"$original_content"
        
        # Overwrite the original file with the updated content
        echo "$updated_content" > "$file"
        
        echo "Modified file path added to: $file"
    fi
done

echo "Script completed."





