ansible-galaxy collection install community.general
ansible-galaxy install geerlingguy.java
ansible-galaxy install kyl191.openvpn
ansible-galaxy install darkwizard242.docker
ansible-galaxy install geerlingguy.nodejs
ansible-galaxy install weareinteractive.docker_compose

ssh-keygen -R 10.111.11.149
ssh-keygen -R 10.111.11.150
ssh-keygen -R 10.111.11.151

chmod 600 ../.vagrant/machines/vulnerable/virtualbox/private_key
chmod 600 ../.vagrant/machines/dspserver/virtualbox/private_key
chmod 600 ../.vagrant/machines/attacker/virtualbox/private_key
