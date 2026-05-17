# 🔍 Nmap: Network Discovery & Security Auditing

This repository serves as a practical guide to understanding and utilizing **Nmap (Network Mapper)**. It includes explanations of various scan types, real-world command examples, and a custom automation script for routine network checks.

## 🎯 Project Objectives
* Understand the core mechanics of network scanning.
* Demonstrate proficiency with TCP, UDP, and stealth scanning techniques.
* Utilize the Nmap Scripting Engine (NSE) for vulnerability detection.
* Automate basic scanning workflows.

## 🛠️ Key Nmap Concepts Covered

### 1. Host Discovery
Finding out which devices are active on a network without port scanning.
`nmap -sn 192.168.1.0/24`

### 2. Port Scanning Techniques
* **TCP SYN Scan (`-sS`):** The default, stealthy scan that never completes the TCP connection.
* **TCP Connect Scan (`-sT`):** Completes the 3-way handshake (louder, leaves logs).
* **UDP Scan (`-sU`):** Scans for open UDP ports (like DNS or DHCP).

### 3. OS and Service Detection
Determining what software and operating systems are running on the target.
`nmap -A 192.168.1.10` (Enables OS detection, version detection, script scanning, and traceroute).

## 🚀 Automation Script
Included in this repository is `nmap_automator.sh`, a simple Bash script that prompts the user for an IP address and performs a basic, quick, or full scan based on their input. 

## ⚠️ Disclaimer
All scans and scripts provided in this repository are for **educational purposes only**. Always ensure you have explicit, written permission to scan a network before using Nmap.
