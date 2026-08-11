#1. Write a script to update the system. 

#!/bin/bash

echo "Updating system packages ..."

sudo apt update
sudo apt upgrade -y

echo "Update is completed!"
