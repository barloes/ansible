## Ansible

# Run ansible using docker image
```
docker build -t aa .
docker run -v ~/:/root/ -v "$(pwd)":/app -P --rm -it aa /bin/bash 
```
# Run docker image


sudo docker run \
    -v /$(pwd)/config/clickhouse_config.xml:/etc/clickhouse-server/config.xml \
    -v /$(pwd)/config/clickhouse_metrika.xml:/etc/clickhouse-server/metrika.xml \
    -v /$(pwd)/config/macros/macros-01.xml:/etc/clickhouse-server/config.d/macros.xml \
    -v /$(pwd)/config/users.xml:/etc/clickhouse-server/users.xml \
    -v /$(pwd)/config/table/:/docker-entrypoint-initdb.d \
    --ulimit nofile=262144:262144 \
    -p 8123:8123 \
    -p 9000:9000 \
    yandex/clickhouse-server:21-alpine


sudo docker run \
    -v /$(pwd)/config/clickhouse_config.xml:/etc/clickhouse-server/config.xml \
    -v /$(pwd)/config/clickhouse_metrika.xml:/etc/clickhouse-server/metrika.xml \
    -v /$(pwd)/config/macros/macros-01.xml:/etc/clickhouse-server/config.d/macros.xml \
    -v /$(pwd)/config/users.xml:/etc/clickhouse-server/users.xml \
    -v /$(pwd)/config/table/:/docker-entrypoint-initdb.d \
    --ulimit nofile=262144:262144 \
    --network=host \
    yandex/clickhouse-server:21-alpine 

sudo docker run \
    -v /$(pwd)/config/clickhouse_config.xml:/etc/clickhouse-server/config.xml \
    -v /$(pwd)/config/clickhouse_metrika.xml:/etc/clickhouse-server/metrika.xml \
    -v /$(pwd)/config/macros/macros-02.xml:/etc/clickhouse-server/config.d/macros.xml \
    -v /$(pwd)/config/users.xml:/etc/clickhouse-server/users.xml \
    -v /$(pwd)/config/table/:/docker-entrypoint-initdb.d \
    --ulimit nofile=262144:262144 \
    --network=host \
    yandex/clickhouse-server:21-alpine 

insert into ttt values(1)

sudo docker run -d \
    -p 2181:2181 \
    -e JVMFLAGS="$JVMFLAGS -Djute.maxbuffer=500000000" \
    zookeeper

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

ansible-inventory -i inventory_aws_ec2.yml --list
ansible-inventory -i inventory_aws_ec2.yml --graph


# Useful links
- https://clarusway.com/ansible-working-with-dynamic-inventory-using-aws-ec2-plugin/


ansible-playbook roles/clickhouse_one.yml
ansible-playbook roles/setup-docker.yml
ansible-playbook roles/install_clickhouse.yml

docker run --rm \
    -v /opt/slam/config/clickhouse_config.xml:/etc/clickhouse-server/config.xml \
    -v /opt/slam/config/clickhouse_metrika.xml:/etc/clickhouse-server/metrika.xml \
    -v /opt/slam/config/macros/macros-01.xml:/etc/clickhouse-server/config.d/macros.xml \
    -v /opt/slam/config/users.xml:/etc/clickhouse-server/users.xml \
    -v /opt/slam/config/table/:/docker-entrypoint-initdb.d \
    --name clickhouse1 \
    --ulimit nofile=262144:262144 \
    --network=host \
    yandex/clickhouse-server:21-alpine 

docker run \
    --env-file /opt/slam/.clickhouse.env \
    --rm \
    -v /opt/slam/config/clickhouse_config.xml:/etc/clickhouse-server/config.xml \
    -v /opt/slam/config/clickhouse_metrika.xml:/etc/clickhouse-server/metrika.xml \
    -v /opt/slam/config/macros/macros-01.xml:/etc/clickhouse-server/config.d/macros.xml \
    -v /opt/slam/config/users.xml:/etc/clickhouse-server/users.xml \
    -v /opt/slam/config/table/:/docker-entrypoint-initdb.d \
    --name clickhouse1 \
    --ulimit nofile=262144:262144 \
    --network=host \
    yandex/clickhouse-server:21-alpine 


docker run -d --env-file /opt/slam/.clickhouse.env --name some-clickhouse-server2 --ulimit nofile=262144:262144 yandex/clickhouse-server:21-alpine 
docker exec -it --env-file /opt/slam/.clickhouse.env \
        yandex/clickhouse-server \
        --network=host \
        bin/bash