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
ansible-playbook clickhouse-playbook.yml 
```

# Useful links
- https://clarusway.com/ansible-working-with-dynamic-inventory-using-aws-ec2-plugin/