FROM kalilinux/kali-rolling

# copy playbook and roles to docker image
COPY playbook.yml /playbook.yml
COPY roles /roles

RUN apt -y update
RUN apt -y install ansible-core
RUN ansible-galaxy collection install community.general

RUN ansible-playbook -c local -i localhost, playbook.yml
CMD ["/bin/bash", "-c"]
# CMD ["ansible-playbook", "-c", "local", "-i", "localhost,", "playbook.yml"]