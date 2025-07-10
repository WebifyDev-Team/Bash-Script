#!/bin/bash

echo "🌐 Downloading latest Google Chrome .deb package..."

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp

echo "📦 Installing Google Chrome..."

sudo apt install -y /tmp/google-chrome-stable_current_amd64.deb

echo "🧹 Cleaning up..."

rm /tmp/google-chrome-stable_current_amd64.deb

echo "✅ Google Chrome has been installed!"
google-chrome --version
