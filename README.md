# kali-on-command

(KoC for short)

An Ansible playbook to install common red team operator tools on Kali machines.

Requirements:
- Ansible Core
- Ansible `Community.General` collection

```bash
apt -y update
apt -y install ansible-core sshpass
ansible-galaxy collection install community.general
```

# Running locally

To run locally:

```bash
ansible-playbook -c local -i localhost, playbook.yml
```

# Running on multiple machines

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

# To-do

- [ ] Install more tools
- [ ] Automated C2 team server setup
- [ ] Automated payload hosting web server (pwndrop)
- [ ] Build redirectors
