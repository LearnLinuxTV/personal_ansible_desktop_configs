---
branch: master

ansible_cron_minute: "*/5"
ssh_port: 22
ssh_users: "user1 user2"

# platform-specific
ansible_python_interpreter: /usr/bin/python3
microcode_amd_install: false
microcode_intel_install: true

# app defaults
gui_editor: gvim
terminal_emulator: terminator
web_browser: flatpak run org.mozilla.firefox

# application selection
audacity: true
authy: true
autofs: true
chromium: true
darktable: true
firefox: true
foliate: true
games: true
glimpse: true
keepassxc: true
libreoffice: true
lutris: true
mattermost: true
minecraft: true
packer: true
signal: true
spotify: true
steam: true
syncthing: true
terraform: true
thunderbird: true
todoist: true
ulauncher: false
vagrant: true
virtualbox: true
vivaldi: true
vlc: true
xonotic: true

# desktop environment selection
gnome: true
mate: false
