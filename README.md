# Build Script 3
[Link to build3.sh](/build3.sh)

This is a simple bash script that displays a menu of options and allows the user to select one. The script then executes the selected option.

## Prerequisites

To run this script, you will need to have the following installed:

* Bash shell
* A text editor

## Instructions

1. Create a new file named `bash.sh` in your preferred text editor.
2. Copy and paste the following code into the file:

```
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

read -p "Press Enter to continue..."
```

3. Save the file.
4. Make the file executable by running the following command:

```
chmod +x bash.sh
```

5. Run the script by typing the following command:

```
./bash.sh
```

## Explanation

The script starts by displaying a menu of options. The user can then select an option by entering the corresponding number. The script then executes the selected option.

The following is a step-by-step explanation of the code:

1. The first line of the script specifies the shell that will be used to execute the script.
2. A menu of options based on numbers is dispalyed to user
3. User is prompted to enter option. For example, 1 for Currently logged user
4. A case statement is initialized with a variable ```$option```
5. Option 1: ```whoami``` is used to show the current logged in user
6. Option 2: ``` echo $SHELL ``` is used to show our current shell directory
7. Option 3: ``` echo $HOME ``` is used to show path to our home directory
8. Option 4: ```uname -a``` shows the user all information about the operating system
9. Option 5: ```pwd`` shows the directory we are currently in
10. Option 6: ```who | wc -l ``` outputs the number of users which are logged in
11. Option 7: ```cat /etc/shells``` shows to the user the number of shells he/she has available
12. Option 8: ```df -h``` shows all hardware information
13. Option 9: ``` lscpu``` shows the user all CPU information
14. Option 10: ```free -h ``` shows the user memory information
15. Option 11: ``` df -i``` shows the user all information about files
16. Option 12: ``` ps aux``` shows the user all processes that are currently running in system
17. Option 0 : ```Exit``` allows user to exit
18. ```*``` This option handles any events of putting invalid options
19. ```esac``` terminates the case statement
20. The user is then prompted to press enter if he would like to continue ```read -p "Press Enter to continue..."```
