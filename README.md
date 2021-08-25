## Ansible

# Run ansible using docker image
```
docker build -t aa .
docker run -v ~/:/root/ -v "$(pwd)":/app -P --rm -it aa /bin/bash 
```
# Explaination
```
ENV AWS_PROFILE="personal" 
AWS_PROFILE refers to the aws profile as defined in ~/.aws/credentials
by default AWS_PROFILE=default
```

# Run ansible-playbook
```
ansible-playbook zoo-playbook.yml 
ansible-playbook copy.yml 
```

# Useful commands
ansible-inventory -i inventory_aws_ec2.yml --list
ansible-inventory -i inventory_aws_ec2.yml --graph


# Useful links
- https://clarusway.com/ansible-working-with-dynamic-inventory-using-aws-ec2-plugin/

