#!/bin/bash

# Ask for domain name
read -p "Enter your domain name (example.com): " domain

# Set variables
root_dir="/var/www/$domain/public_html"
vhost_file="/etc/apache2/sites-available/$domain.conf"

# Create root directory
sudo mkdir -p "$root_dir"
sudo chown -R $USER:$USER "/var/www/$domain"
sudo chmod -R 755 "/var/www/$domain"

# Create a sample index.html
echo "<html><head><title>Welcome to $domain!</title></head><body><h1>Success! Virtual Host for $domain is working.</h1></body></html>" | sudo tee "$root_dir/index.html"

# Create Virtual Host config file
sudo bash -c "cat > $vhost_file" <<EOL
<VirtualHost *:80>
    ServerAdmin webmaster@$domain
    ServerName $domain
    ServerAlias www.$domain
    DocumentRoot $root_dir
    ErrorLog \${APACHE_LOG_DIR}/$domain-error.log
    CustomLog \${APACHE_LOG_DIR}/$domain-access.log combined
</VirtualHost>
EOL

# Enable the new virtual host
sudo a2ensite "$domain.conf"

# Add to /etc/hosts
sudo bash -c "echo '127.0.0.1 $domain' >> /etc/hosts"

# Reload Apache
sudo systemctl reload apache2

echo "✅ Virtual host for $domain created and enabled."
