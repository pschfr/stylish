#!/bin/bash

# Introduction and new folder name
echo -e "\e[34m\e[1mNew Stylish Script v1.0\e[0m"
echo -ne "\nEnter folder name: "
read -e NAME
echo -ne "\nEnter website URL: "
read -e URL
echo -ne "\nEnter description: "
read -e DESC

# Move to correct location, create and enter folder
cd "/home/paul/Dropbox/Work/stylish/"
mkdir "$NAME"
cd "$NAME"

# Generate readme with content
cat <<EOF > readme.md
# [$NAME]($URL)
$DESC
EOF

# Create CSS file
touch style.css

# Finished!
echo -e "\n$NAME has been created!\n\nOpen your text editor and get to work."
