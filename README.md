
# 🔧 Dev Setup Scripts for Ubuntu

This collection of Bash scripts helps you quickly set up a development environment on Ubuntu (20.04 / 22.04), including essential tools like LAMP, Chrome, Slack, VS Code, Postman, and Git config.

---

## 📁 Available Scripts

| Script Name              | Description                                 |
|--------------------------|---------------------------------------------|
| `install-lamp.sh`        | Installs Apache, MySQL, PHP (LAMP Stack)    |
| `create-vhost.sh`        | Creates an Apache virtual host              |
| `install-chrome.sh`      | Installs Google Chrome browser              |
| `install-slack.sh`       | Installs Slack desktop app                  |
| `install-vscode.sh`      | Installs Visual Studio Code                 |
| `install-postman.sh`     | Installs Postman API client via Snap        |
| `git-config-global.sh`   | Sets Git global username and email          |

---

## 🚀 How to Use

### 1. Clone or Create the Script Files

If you've downloaded these files:

```bash
cd your-folder
```

Or create each file manually using the script content.

---

### 2. Make a Script Executable

```bash
chmod +x script-name.sh
```

For example:

```bash
chmod +x install-lamp.sh
```

---

### 3. Run the Script

```bash
./script-name.sh
```

For example:

```bash
./install-vscode.sh
```

---

## 📘 Script Details

### 🐘 install-lamp.sh
- Installs Apache, MySQL, PHP
- Sets up UFW firewall
- Adds a test PHP file at `http://localhost/info.php`

### 🌐 create-vhost.sh
- Prompts for a domain name like `test.local`
- Creates `/var/www/<domain>/public_html` directory
- Sets permissions and Apache virtual host file
- Adds domain to `/etc/hosts`
- Enables site and reloads Apache

### 🧭 install-chrome.sh
- Downloads the latest `.deb` from Google
- Installs via `apt`

### 💬 install-slack.sh
- Installs Slack using the official `.deb` package

### 🧑‍💻 install-vscode.sh
- Downloads and installs VS Code from official source
- Adds `code` to terminal path

### 🔬 install-postman.sh
- Installs Postman via Snap
- Auto-updated version

### 🛠 git-config-global.sh
- Prompts for Git username and email
- Sets them using `git config --global`
- Displays current global Git config

---

## 📎 Notes

- All scripts are intended for Ubuntu 20.04+ (or similar Debian-based distros)
- You may need `sudo` access for most installations
- Snap should be pre-installed (or installed by script where required)

---

## 📬 Contributing

Want to add more scripts or improve this setup? Feel free to fork or contribute.

---

## ✅ Author

Scripts created by [Dev Patel](https://www.linkedin.com/in/dev-patel-bb1185244)

---