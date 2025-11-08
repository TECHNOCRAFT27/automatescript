#!/bin/bash
echo "🧹 Updating and cleaning system..."
sudo apt update && sudo apt upgrade -y
sudo apt autoremove -y && sudo apt autoclean -y
echo "✅ System is up-to-date!"
