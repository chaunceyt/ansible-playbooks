##Ansible pull Repo

This repo provisions the Amazon and RedHat AMIs

The bash script below is passed to the ```user_data``` of EC2 setup the script setups up the environment to be provisioned using ansible-pull

```bash
#!/bin/bash -ex

ANSIBLE_PULL=/opt/ansible/bin/ansible-pull
echo "localhost" > ~/ansible_hosts
export ANSIBLE_HOSTS=~/ansible_hosts
yum -y install git
cd /opt
git clone git://github.com/ansible/ansible.git --recursive
source /opt/ansible/hacking/env-setup
${ANSIBLE_PULL}  -C master -U https://github.com/chaunceyt/ansible-playbooks.git
exit 0

```
