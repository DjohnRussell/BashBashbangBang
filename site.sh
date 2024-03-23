#!/bin/bash

# Ask what site
echo "Name of the site you want me to open: ?"
# Store the ans in a variable
read name
# Action
open https://www.${name}.no
# Display message that it has been executed
echo "Script has been executed."
