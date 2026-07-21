#!/usr/bin/env bash
set -euo pipefail
if [[ $EUID -ne 0 ]]; then echo "Run as root" >&2; exit 1; fi
apt-get update
apt-get install -y ufw fail2ban auditd unattended-upgrades
ufw default deny incoming
ufw default allow outgoing
ufw allow OpenSSH
ufw --force enable
systemctl enable --now fail2ban auditd
sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication no/' /etc/ssh/sshd_config
sshd -t
systemctl reload ssh
printf 'Linux baseline applied. Validate authorized SSH keys before ending the session.\n'
