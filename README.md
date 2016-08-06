##Testing Ansible pull

 

```bash
#!/bin/bash -ex
ANSIBLE_PULL=/usr/local/bin/ansible-pull
echo "localhost" > ~/ansible_hosts
export ANSIBLE_HOSTS=~/ansible_hosts
yum -y install git
pip install ansible
${ANSIBLE_PULL}  -C master -U https://github.com/chaunceyt/ansible-playbooks.git
exit 0
```
