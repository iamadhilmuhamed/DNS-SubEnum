# DNS-SubEnum - DNS Subdomain Enumeration Tool

dns-subenum is a simple and fast tool to find subdomains of a target domain using DNS resolution.  
This tool is useful for reconnaissance, learning, and security testing (only on domains you have permission for).

The tool checks each subdomain from a wordlist and shows only valid subdomains that exist in DNS.

---

## ✨ Features

- Fast subdomain enumeration using parallel DNS queries
- Real-time output (shows results while scanning)
- Supports large wordlists
- Clean output (only valid subdomains)
- Option to save results into a file
- Can be installed as a normal system tool
- Works even if wordlist is not in the same folder (auto-detects default wordlist)

---

## ⚙️ Installation

```bash
chmod +x install.sh
sudo ./install.sh
