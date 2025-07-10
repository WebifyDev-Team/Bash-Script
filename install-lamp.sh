#!/bin/bash

echo "📦 Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "🧱 Installing Apache..."
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2

echo "🌐 Allowing Apache through UFW firewall..."
sudo ufw allow in "Apache"
sudo ufw --force enable

echo "🗄️ Installing MySQL..."
sudo apt install mysql-server -y
sudo systemctl start mysql
sudo systemctl enable mysql

echo "🔐 Securing MySQL installation..."
# Auto answer mysql_secure_installation
sudo mysql_secure_installation <<EOF

y
y
y
y
EOF

echo "🧠 Installing PHP..."
sudo apt install php libapache2-mod-php php-mysql -y

echo "💡 Creating a PHP info test file..."
echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/info.php > /dev/null

echo "🔁 Restarting Apache..."
sudo systemctl restart apache2

echo "✅ LAMP stack installed successfully!"
echo "📁 Visit http://localhost/info.php to verify PHP is working."
