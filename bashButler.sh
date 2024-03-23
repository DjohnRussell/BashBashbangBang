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
            echo "Select your OS:"
            echo "1 - Linux"
            echo "2 - Mac"
            read -p "Choose an option: " os_choice
            clear_and_sleep
            case $os_choice in
                1)
                    echo "Enter the name of the software to install with apt:"
                    read softwareName
                    if ! sudo apt-get install $softwareName; then
                        echo "Failed to install $softwareName."
                    fi
                    ;;
                2)
                    echo "Enter the name of the software to install with brew:"
                    read softwareName
                    if ! brew install $softwareName; then
                        echo "$softwareName installation failed."
                    else
                        echo "$softwareName is installed."
                    fi
                    ;;
                *)
                    echo "Invalid option. Returning to main menu."
                    ;;
            esac
            ;;
        3)
            clear_and_sleep
            read -p "Enter file name: " name
            if [ -e "$name.txt" ]; then
                echo "File $name.txt already exists."
            else
                touch "$name.txt"
                nano "$name.txt"
            fi
            ;;
        4)
            clear_and_sleep
            read -p "Which app would you like to open? " appName
            if ! open -a "$appName"; then
                echo "Failed to open $appName."
            fi
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
