# 2. Write a shell script to get the name of the tool from the user and check whether the tool is installed or not.

#!/bin/bash

echo "Enter the tool name:"
read tool

if command -v "$tool"
then
  echo "$tool is installed."
else
  echo "$tool is not installed."
fi
