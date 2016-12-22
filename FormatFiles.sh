#!/bin/bash

for i in "*.bat" "*.bib" "*.sh" "*.tex" ".gitignore" "README.md"; do
    # Trim trailing whitespaces
    find . -type f -name "$i" -exec sed -i 's/[[:space:]]\+$//' {} \+

    # Normalize newlines
    find . -type f -name "$i" -exec dos2unix --quiet {} \;

    # Add empty line at the end of file
    find . -type f -name "$i" -exec sed -i -e '$a\' {} \;

    # Normalize encoding
    find . -type f -name "$i" -exec recode UTF-8 {} \;
done
