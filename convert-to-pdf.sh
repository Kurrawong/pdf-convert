#!/bin/sh

###################################
##         PDF-CONVERT           ##
###################################

# Loop over all files in the /data directory
for file in /data/*; do
  # Check if the file is not a PDF
  if [ "${file##*.}" != "pdf" ]; then
    # Convert the file to PDF
    libreoffice --headless --convert-to pdf "$file" --outdir "/data"
  fi
done


