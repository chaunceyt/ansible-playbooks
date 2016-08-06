##Testing Ansible pull

```bash
#!/bin/bash -ex
echo "localhost" > ~/ansible_hosts
export ANSIBLE_HOSTS=~/ansible_hosts
ansible-pull  -C master -U https://github.com/chaunceyt/ansible-playbooks.git
exit 0
```
