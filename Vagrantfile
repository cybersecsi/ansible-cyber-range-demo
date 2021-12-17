# Defines our Vagrant environment
#
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config| 
# # create portal image
  
config.vm.define :vulnerable do |portal_config|
    # portal_config.vm.box = "centos/7"
    portal_config.vm.box = "bento/ubuntu-20.04"
    portal_config.vm.hostname = "vulnerable"
    portal_config.vm.network :private_network, ip: "10.111.11.149"
    # portal_config.vm.network "forwarded_port", guest: 18002, host: 18002
    portal_config.vm.provider "virtualbox" do |vb|
      vb.memory = "512"
    end
end
 config.vm.define :attacker do |ldap_config|
     ldap_config.vm.box = "centos/7"
     ldap_config.vm.hostname = "attacker" 
     ldap_config.vm.network :private_network, ip: "10.111.11.150"
     ldap_config.vm.provider "virtualbox" do |vb|
       vb.memory = "256"
     end
    ldap_config.vm.provision "shell",
      # inline: "sudo yum -y update && sudo yum -y install python3"
      inline: "sudo yum -y install python3"
end
 config.vm.define :dspserver do |dsp_config|
    dsp_config.vm.box = "bento/ubuntu-20.04"
    dsp_config.vm.hostname = "dsp"
    dsp_config.vm.network :private_network, ip: "10.111.11.151"
    dsp_config.vm.provider "virtualbox" do |vb|
       vb.memory = "512"
    end
  end
end