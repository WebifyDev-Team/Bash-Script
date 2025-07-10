#!/bin/bash

echo "🔄 Updating system..."
sudo apt update -y

echo "📦 Installing Snap if not already installed..."
sudo apt install snapd -y

echo "🌐 Installing Postman via Snap..."
sudo snap install postman

echo "✅ Postman installed successfully!"
echo "🚀 You can launch it using the command: postman"
