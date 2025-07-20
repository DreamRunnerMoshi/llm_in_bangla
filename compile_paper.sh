#!/bin/bash

# LaTeX Research Paper Compilation Script
# This script compiles the research paper and handles bibliography if needed

echo "Compiling LaTeX research paper..."

# Clean up previous compilation files
rm -f research_paper.aux research_paper.log research_paper.out research_paper.toc research_paper.bbl research_paper.blg

# First compilation
echo "First compilation..."
pdflatex research_paper.tex

# Second compilation (for cross-references)
echo "Second compilation..."
pdflatex research_paper.tex

# Check if PDF was created successfully
if [ -f "research_paper.pdf" ]; then
    echo "✓ Research paper compiled successfully!"
    echo "Output: research_paper.pdf"
    
    # Display file size
    size=$(ls -lh research_paper.pdf | awk '{print $5}')
    echo "File size: $size"
    
    # Display page count
    pages=$(pdfinfo research_paper.pdf 2>/dev/null | grep Pages | awk '{print $2}')
    if [ ! -z "$pages" ]; then
        echo "Pages: $pages"
    fi
else
    echo "✗ Compilation failed!"
    exit 1
fi

echo "Done!"