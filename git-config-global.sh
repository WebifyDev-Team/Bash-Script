#!/bin/bash

echo "🔧 Git Global Config Setup"

# Ask for Git user name and email
read -p "Enter your Git username: " username
read -p "Enter your Git email: " email

# Set global Git config
git config --global user.name "$username"
git config --global user.email "$email"

echo "✅ Git global configuration set successfully."

# Show config summary
echo
echo "📋 Current Git Global Config:"
git config --global --list
