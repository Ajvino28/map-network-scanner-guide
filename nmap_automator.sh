#!/bin/bash

# A simple Nmap automation script

echo "============================="
echo "   Nmap Automator Script     "
echo "============================="

read -p "Enter the target IP or Domain: " target

echo "Select Scan Type:"
echo "1) Quick Scan"
echo "2) Full Port Scan"
echo "3) OS & Version Detection"
read -p "Choice (1/2/3): " choice

case $choice in
  1)
    echo "[+] Running Quick Scan on $target..."
    nmap -T4 -F $target
    ;;
  2)
    echo "[+] Running Full Port Scan on $target..."
    nmap -p- $target
    ;;
  3)
    echo "[+] Running OS & Version Detection on $target..."
    nmap -A $target
    ;;
  *)
    echo "[-] Invalid choice. Exiting."
    ;;
esac

echo "[+] Scan Complete!"
