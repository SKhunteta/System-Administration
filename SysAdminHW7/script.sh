#!/bin/sh

curl http://web.engr.oregonstate.edu/~khuntets/CS_312/hive.yaml > hive.yaml
curl http://web.engr.oregonstate.edu/~khuntets/CS_312/containers.ini > containers.ini
curl http://web.engr.oregonstate.edu/~khuntets/CS_312/containers.yaml > containers.yaml
curl http://web.engr.oregonstate.edu/~khuntets/CS_312/ansible.cfg > ansible.cfg
curl http://web.engr.oregonstate.edu/~khuntets/CS_312/id_rsa > id_rsa
curl http://web.engr.oregonstate.edu/~khuntets/CS_312/id_rsa.pub > id_rsa.pub
curl http://web.engr.oregonstate.edu/~khuntets/CS_312/index.html > index.html
chmod 600 ~/id_rsa
chmod 644 ~/id_rsa.pub
scp ~/id_rsa.pub root@192.168.1.xxx:/root/.ssh/authorized_keys
cp ~/id_rs* ~/.ssh
sudo yum install -y ansible
ansible-playbook hive.yaml -i hive.ini
ansible-playbook containers.yaml -i containers.ini
curl 192.168.1.101:8080 >> results
curl 192.168.1.102:8080 >> results
curl 192.168.1.103:8080 >> results
curl 192.168.1.104:8080 >> results
curl 192.168.1.105:8080 >> results
curl 192.168.1.106:8080 >> results
curl 192.168.1.107:8080 >> results
curl 192.168.1.108:8080 >> results
curl 192.168.1.109:8080 >> results
curl 192.168.1.110:8080 >> results
