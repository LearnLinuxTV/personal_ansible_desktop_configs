# Personal Ansible Desktop Configs

I use Ansible to configure all of my desktops, laptops, and servers. I use the Ansible Pull method, which I describe in both my Ansible Pull tutorial (already uploaded) and my Ansible desktop tutorial (will be published by December 11th 2020). It's fully automated, and scripts everything from system services to GNOME desktop settings.

## Disclaimer
This repository contains a copy of the Ansible configuration that I use for laptops, desktops as well as servers.
Please don't directly use this against your own machines, as it is something I developed for myself and may not translate to your use-case. It even configures OpenSSH, so if you run it you may get locked out. I've provided this as a HUGE example you can use to build your own, and compare syntax.

## How does it work?
As mentioned above, it uses Ansible pull, so some familiarity with that is required. Luckily for you, I have a few videos on my channel that describes how Ansible pull works. Check out the LearnLinuxTV channel, the videos can be found in the Ansible playlist. I use Ansible in "pull-mode" because it handles the dynamic nature of laptops and desktops better. Afterall, they aren't always turned on. And I don't like to maintain multiple things for one purpose, so I have the same repo configuring servers as well.

The folder structure breaks down like this:

**local.yml**: This is the Playbook that Ansible expects to find by default in pull-mode, think of it as an "index" of sorts that pulls other Playbooks in.


**ansible.cfg**: Configuration settings for Ansible goes here.


**group_vars/**: This directory is where I can place variables that will be applied on every system.


**host_vars/**: Each laptop/desktop/server gets a host_vars file in this folder, named after its hostname. Sets variables specific to that computer.


**hosts**: This is the inventory file. Even in pull-mode, an inventory file can be used. This is how Ansible knows what group to put a machine in.


**playbooks**: Additional playbooks that I may want to run, or have triggered.


**roles/**: This directory contains my base, workstation, and server roles. Every host gets the base role. Then either 'workstation' or 'server', depending on what it is.

**roles/base**: This role is for every host, regardles of the type of device it is. This role contains things that are intended to be on every host, such as default configs, users, etc.

**roles/workstation**: After the base role runs on a host, this role runs only on hosts that are designated to be workstations. GUI-specific things, such as GUI apps (Firefox, etc), Flatpaks, wallpaper, etc. Has a folder for the GNOME and MATE desktops.

**roles/server**: After the base role runs on a host, this role runs only on hosts designated as servers. Monitoring plugins, unattended-updates, server firewall rules, and other server-related things are configured here.

After it's run for the first time manually, this Ansible config creates its own Cronjob for itself on that machine so you never have to run it manually again going forward, and it will track all future commits and run them against all your machines as soon as you commit a change. You can find the playbook for Cron in the base role.

## How do I run it?
You don't, you use this to build your own. Go through my Ansible desktop tutorial that launches on December 11th to build your "skeleton", then use this repo for syntax reference. If you insist on running this, you run it with the following command after installing Ansible:

ansible-pull -U https://github.com/LearnLinuxTV/personal_ansible_desktop_configs.git
