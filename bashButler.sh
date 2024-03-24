#!/bin/bash

# Function to clear screen and sleep
clear_and_sleep() {
    clear
    sleep 0.5
}

# Function to display main menu
display_main_menu() {
    echo "-----------------------------"
    echo "         Bash Butler         "
    echo "-----------------------------"
    sleep 0.5
    echo "        1 - Internet         "
    sleep 0.5
    echo "        2 - Software         "
    sleep 0.5
    echo "        3 - File             "
    sleep 0.5
    echo "        4 - Open App         "
    sleep 0.5
    echo "        5 - Exit             "
}

# Main program loop
while true; do
    display_main_menu
    read -p "Select an option: " num

    case $num in 
        1)
            clear_and_sleep
            echo "        Internet Manager         "
            echo "---------------------------------"
            echo "        1 - New Search           "
            echo "        2 - Google               "
            echo "        3 - ChatGPT              "
            read -p "Choose an option: " name
            case $name in 
                1)
                    clear_and_sleep
                    read -p "Which site do you wish to visit? " site
                    if open https://www.$site.com; then
                        echo "Opening site: $site "
                    else
                        echo "Failed to open site: $site"
                    fi
                    ;;
                2)
                    if ! open https://www.google.com; then
                        echo "Failed to open Google."
                    fi
                    ;;
                3)
                    if ! open https://chat.openai.com; then
                        echo "Failed to open ChatGPT."
                    fi
                    ;;
                *)
                    echo "Invalid option. Returning to main menu."
                    ;;
            esac
            ;;                    
        2)
            clear_and_sleep
echo "        Select your OS:        "
echo "        1 - Linux        "
echo "        2 - Mac        "
read -p "        Choose an option:         " os_choice
clear_and_sleep

case $os_choice in
    1)
        echo "        1 - Install          "
        echo "        2 - Remove              "
        read -p "        Choose an option:   " option 

        case $option in
            1)
                echo "Enter the name of the software to install with apt:"
                read softwareName
                if ! sudo apt-get install $softwareName; then
                    echo "Failed to install $softwareName."
                fi
                ;;
            2)
                echo "Enter the name of the software to remove with apt:"
                read softwareName
                if ! sudo apt-get remove $softwareName; then
                    echo "Failed to remove $softwareName."
                fi
                ;;
            *)
                echo "Invalid option. Returning to main menu."
                ;;
        esac
        ;;
    2)
        echo "        1 - Install          "
        echo "        2 - Remove              "
        read -p "        Choose an option:   " option 

        case $option in
            1)
                echo "Enter the name of the software to install with brew:"
                read softwareName
                if ! brew install $softwareName; then
                    echo "$softwareName installation failed."
                else
                    echo "$softwareName is installed."
                fi
                ;;
            2)
                echo "Enter the name of the software to uninstall with brew:"
                read softwareName
                if ! brew uninstall $softwareName; then
                    echo "$softwareName uninstallation failed."
                else
                    echo "$softwareName is uninstalled."
                fi
                ;;
            *)
                echo "Invalid option. Returning to main menu."
                ;;
        esac
        ;;
    *)
        echo "Invalid option. Returning to main menu."
        ;;
esac
;;

        3)
           
            clear_and_sleep
            echo "        File Management        "
            echo "---------------------------------"
            echo "        1 - Create New File    "
            echo "        2 - Edit Existing File "
            echo "        3 - Remove File        "
            read -p "Choose an option: " file_option

        case $file_option in
            1)
                read -p "Enter file name: " new_file_name
                if [ -e "$new_file_name.txt" ]; then
                    echo "File $new_file_name.txt already exists."
                else
                    touch "$new_file_name.txt"
                    nano "$new_file_name.txt"
                    echo "New file $new_file_name.txt created."
                fi
                ;;
            2)
                read -p "Enter file name to edit: " edit_file_name
                if [ -e "$edit_file_name.txt" ]; then
                    nano "$edit_file_name.txt"
                else
                    echo "File $edit_file_name.txt does not exist."
                fi
                ;;
            3)
                read -p "Enter file name to remove: " remove_file_name
                if [ -e "$remove_file_name.txt" ]; then
                    rm "$remove_file_name.txt"
                    echo "File $remove_file_name.txt removed."
                else
                    echo "File $remove_file_name.txt does not exist."
                fi
                ;;
    *)
        echo "Invalid option. Returning to main menu."
        ;;
    esac
    ;;
        5)
            echo "Exiting Bash Butler. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option. Please select a valid option."
            ;;
    esac
    read -p "Press Enter to return to main menu..." pause
    clear_and_sleep
done
