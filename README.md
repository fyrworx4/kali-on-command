# kali-on-command

(KoC for short)

An Ansible playbook to install common red team operator tools on Kali machines.

## Features

- Removes default installation of Impacket
- Removes `impacket-*` binaries
- Installs Impacket suite from [ThePorgs](https://github.com/ThePorgs)
- Installs [Ghostpack compiled binaries](https://github.com/r3motecontrol/Ghostpack-CompiledBinaries)
- Installs [NetExec](https://github.com/Pennyw0rth/NetExec)
- Downloads [ScareCrow](https://github.com/optiv/ScareCrow)
- Downloads [sliver](https://github.com/BishopFox/sliver) client and server

## How to use

Requirements:

- Ansible Core
- Ansible `Community.General` collection

To install dependencies:

```bash
apt -y update
apt -y install ansible-core sshpass
ansible-galaxy collection install community.general
```

To download KoC:

```
git clone https://github.com/fyrworx4/kali-on-command.git
cd kali-on-command
```

To run locally:

```bash
ansible-playbook -c local -i localhost, playbook.yml
```

To run on multiple machines, create an inventory file called "hosts" with IP addresses of your Kali VMs:

```ini
10.128.0.10
10.128.0.11
10.128.0.12
```

Then run:

```bash
ansible-playbook -i hosts -u kali -k -b --ask-become-pass playbook.yml
```

Where:
- `-i hosts`: Use the `hosts` file for inventory
- `-u kali`: SSH into the `kali` user on all hosts in inventory
- `-k`: Prompt for SSH password
- `-b --ask-become-pass`: Elevate to `root` after SSH'ing in, and prompt for sudo password as well
- `playbook.yml` - the file of the playbook

## To-do

- [ ] Install more tools
- [ ] Deploy C2 team server
- [ ] Deploy payload hosting web server (pwndrop)
- [ ] Deploy [raven](https://github.com/nos3curity/Raven)
- [ ] Build redirectors
