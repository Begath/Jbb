
#!/data/data/com.termux/files/usr/bin/bash

# Update and install essential packages
pkg update && pkg upgrade -y
pkg install -y git curl

# Clone the repository via SSH
echo "[1/3] Cloning JBot repo..."
git clone git@github.com:jbotdev/jbot.git || {
  echo "Failed to clone. Check SSH key or connection."
  exit 1
}

# Change directory and run setup
echo "[2/3] Entering project..."
cd jbot || exit 1

echo "[3/3] Running setup..."
bash setup.sh
