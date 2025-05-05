#!/data/data/com.termux/files/usr/bin/bash
pkg update && pkg upgrade -y
pkg install -y git curl

# Clone using SSH (requires SSH key to be added to GitHub)
git clone git@github.com:jbotdev/jbot.git || {
  echo "Cloning failed. Check SSH key setup and repository access."
  exit 1
}

cd jbot || exit 1
bash setup.sh
