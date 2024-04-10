# kali-on-command

(KoC for short)

An Ansible playbook to install common red team operator tools on Kali machines.

Requirements:
- Ansible Core
- Ansible `Community.General` collection

```bash
apt -y update
apt -y install ansible-core
ansible-galaxy collection install community.general
```

To run locally:

```bash
ansible-playbook -c local -i localhost, playbook.yml
```

