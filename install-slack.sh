#!/bin/bash

echo "🌐 Downloading latest Slack .deb package..."

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.38.125-amd64.deb -P /tmp

echo "📦 Installing Slack..."

sudo apt install -y /tmp/slack-desktop-*.deb

echo "🧹 Cleaning up..."

rm /tmp/slack-desktop-*.deb

echo "✅ Slack has been installed!"
slack --version
