#!/bin/bash
# Simple Git setup script

echo "We will install and configure Git on your system..."

# Step 1: Update package list and install Git

sudo apt install git -y

echo "✅ Git installed successfully!"

# Step 2: Get user info
echo -n "Enter your name: "
read name

echo -n "Enter your email: "
read email

# Step 3: Configure Git globally
git config --global user.name "$name"
git config --global user.email "$email"

# Step 4: Verify configuration
echo
echo "🧾 Your Git configuration:"
git config --list
git config --global init.defaultBranch main


echo
echo "🎉 Git is now set up successfully!"
echo
echo "💡 Suggestion:"
echo "Step 1: Create a new project folder → mkdir myproject && cd myproject"
echo "Step 2: Initialize Git → git init"
echo "Step 3: Start coding and commit your changes → git add . && git commit -m 'First commit'"
