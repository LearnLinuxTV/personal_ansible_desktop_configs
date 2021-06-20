---
branch: master

ansible_cron_minute: "40"
ssh_port: 22
ssh_users: "user1 user2"

# platform-specific
linode_instance: true
microcode_amd_install: false
microcode_intel_install: false
proxmox_instance: false
raspberry_pi: false

# server
unattended_upgrades: true
web_server: true
