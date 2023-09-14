#!/bin/bash

# Display Menu

echo "Select an option: "
echo "1. Currently logged user"
echo "2. Your shell directory"
echo "3. Home directory"
echo "4. OS name & version"
echo "5. Current working directory"
echo "6. Number of users logged in"
echo "7. Show all available shells in your system"
echo "8. Hard disk information"
echo "9. CPU information"
echo "10. Memory Information"
echo "11. File System Information"
echo "12. Currently running process"
echo "0. Exit"

read -p "Enter option: " option

case $option in
  1) whoami ;;

  2) echo $SHELL ;;

  3) echo $HOME ;;

  4) uname -a ;;

  5) pwd ;;

  6) who | wc -l ;;

  7) cat /etc/shells ;;

  8) df -h ;;

  9) lscpu ;;

  10) free -h ;;

  11) df -i ;;

  12) ps aux ;;

  0) echo "Exiting Now!" ;;
  *) echo "Invalid option" ;;
esac
