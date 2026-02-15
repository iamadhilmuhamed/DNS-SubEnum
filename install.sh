#!/usr/bin/env bash

set -e

BIN_PATH="/bin/dns-subenum"
WORDLIST_DIR="/usr/share/wordlists"
WORDLIST_PATH="$WORDLIST_DIR/subdomains.txt"

echo "[+] Installing dns-subenum..."

if [[ $EUID -ne 0 ]]; then
    echo "[-] Please run as root (use sudo)."
    exit 1
fi

# Install binary
cp dns-subenum "$BIN_PATH"
chmod +x "$BIN_PATH"
echo "[+] Installed tool to $BIN_PATH"

# Install wordlist
mkdir -p "$WORDLIST_DIR"
cp subdomains.txt "$WORDLIST_PATH"
echo "[+] Installed wordlist to $WORDLIST_PATH"

echo "[+] Installation completed."
echo "[+] You can now run: dns-subenum -d example.com"
