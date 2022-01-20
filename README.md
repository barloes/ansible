## Ansible

# Run ansible using docker image
```
docker build -t aa .

bash
docker run -v ~/.aws:/root/.aws -v "$(pwd)":/app -v /etc/keypair:/key -v ~/.ssh:/root/.ssh -P --rm -it aa /bin/bash 
```
# Setting up kubernetes
- https://www.digitalocean.com/community/tutorials/how-to-create-a-kubernetes-cluster-using-kubeadm-on-ubuntu-20-04

```
alias ap="ansible-playbook"
ap kubernetes/init.yml
ap kubernetes/dependecies.yml
ap kubernetes/control-plane.yml
ap kubernetes/workers.yml

```

# Explaination
```
ENV AWS_PROFILE="personal" 
AWS_PROFILE refers to the aws profile as defined in ~/.aws/credentials
by default AWS_PROFILE=default
```

# Run ansible-playbook
```
ansible-playbook ping.yml
```

# Useful commands
ansible-inventory -i inventory_aws_ec2.yml --list
ansible-inventory -i inventory_aws_ec2.yml --graph

# Useful links
- https://clarusway.com/ansible-working-with-dynamic-inventory-using-aws-ec2-plugin/
- https://docs.ansible.com/ansible/latest/user_guide/intro_patterns.html 

