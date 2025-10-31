#to check the package name exit or not
#!/bin/bash

# Assign the package/command name to a variable (no spaces around =)
pkg=htop

# Check if the command exists using `command -v`, and silence the output
if ! command -v "$pkg" &> /dev/null
then
    # If not available, inform the user and install it using pacman
    echo "$pkg is not available, installing it..."
    sudo pacman -Syu 
    sudo pacman -S "$pkg"
else
    # If available, inform the user
    echo "$pkg is available, let's run it..."
fi

# Run the command
"$pkg"


