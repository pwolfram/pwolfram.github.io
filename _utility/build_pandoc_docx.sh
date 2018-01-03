#!/usr/bin/env bash
# This builds a Word doc from Pandoc markdown (argument to script for EXAMPLE.md file)

OUTEXTENSION=docx
INFILE=$1
OUTFILE=${INFILE%.*}.$OUTEXTENSION

pandoc -o $OUTFILE -f markdown -t $OUTEXTENSION $INFILE --filter=pandoc-fignos --bibliography=../_bibliography/references.bib  --csl=../_bibliography/nature
