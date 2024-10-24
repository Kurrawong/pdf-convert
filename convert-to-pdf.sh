#!/bin/sh

###################################
##         PDF-CONVERT           ##
###################################

# Loop over all files in the /data directory
for file in /data/*; do
	# Check if the file is not a PDF
	if [ "${file##*.}" != "pdf" ]; then
		# Extract the filename with extension
		filename_ext=$(basename "$file")
		filename_no_ext=$(basename "$file" | cut -d. -f1)

		# Convert the file to PDF
		libreoffice --headless --convert-to pdf "$file" --outdir "/data"

		# Rename it
		mv "/data/${filename_no_ext}.pdf" "/data/${filename_ext}.pdf"
	fi
done


