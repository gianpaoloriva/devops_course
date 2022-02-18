# Use Ansible Playbook

```
docker run --rm -it -v $(pwd):/ansible willhallonline/ansible:latest ansible-playbook playbook.yml -i hosts
```

# Use Dynamic Inventory

```
pip install boto
pip install ansible
export AWS_ACCESS_KEY_ID='AK123'
export AWS_SECRET_ACCESS_KEY='abc123'

export EC2_INI_PATH=/Users/gianpaoloriva/Documents/Workshop/Ansible/ansible/inventory/my_ec2.ini

python ec2.py

es. docker run --rm -it -v $(pwd):/ansible willhallonline/ansible:latest ansible-playbook -i ./ec2.py --limit "tag_App_backend:&tag_Environment_staging:&tag_Usage_clock_worker" playbook.yml
```

# Use Windows Playbook

  

## Only for MacOs

```
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
```

```
docker run --rm -it -v $(pwd):/ansible willhallonline/ansible:latest ansible-playbook winservicerestart.yml -i hosts --ask-pass
```