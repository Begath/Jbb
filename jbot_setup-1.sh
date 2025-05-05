#!/data/data/com.termux/files/usr/bin/bash
pkg update && pkg upgrade -y
pkg install -y git curl

GH_USER="Begath"
GH_TOKEN="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"

git clone https://$GH_USER:$GH_TOKEN@github.com/Begath/Jbb.git
cd Jbb || exit 1
bash setup.sh