#!/bin/bash

echo "🌐 Downloading latest VS Code .deb package..."

wget -qO /tmp/code.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"

echo "📦 Installing Visual Studio Code..."

sudo apt install -y /tmp/code.deb

echo "🧹 Cleaning up..."

rm /tmp/code.deb

echo "✅ Visual Studio Code installed successfully!"
code --version
