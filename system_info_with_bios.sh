#!/bin/bash

# Display the name of the computer
echo "Computer name:"
hostnamectl | grep "hostname:" | cut -d: -f2

# Display BIOS information
echo -e "\nBIOS information:"
sudo dmidecode -t bios | grep -E 'Vendor|Version|Release Date|BIOS Revision'

# Display CPU information
echo -e "\nCPU information:"
lshw -short | grep -i "processor" | head -1 | cut -f2-

# Display RAM information
echo -e "\nRAM information:"
lshw -short | grep -i "memory" | grep -v "system" | cut -f2-

# Display display adapter information
echo -e "\nDisplay adapter information:"
lshw -short | grep -i "display" | cut -f2-

# Display network adapter information
echo -e "\nNetwork adapter information:"
lshw -short | grep -i "network" | cut -f2-
