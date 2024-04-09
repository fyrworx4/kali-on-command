# kali-on-command

(KoC for short)

An Ansible playbook to install common red team operator tools on Kali machines.

```bash
apt -y update
apt -y install ansible-core
ansible-galaxy collection install community.general
```