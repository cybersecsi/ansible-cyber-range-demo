# Cyber-Range through Ansible  

An example of Ansible capabilities to build vulnerable environments and to setup a cyber-range lab.   
To show the PoC we setup a Vagrant environment composed of three machines:
* vulnerable     : a vulnerable log4j application.
* attacker       : an attacker machine prepared with nmap scripts and ldap vulenrable server
* dspserver      : a dsp instance to show how to easily install DSP and other cyber-range stuffes

Then ansible is used to setup and configure the machines.   
## Prequirements   
You need to install the following tools.   
- `virtualbox`
- `vagrant` 
- `ansible` 

## Getting started   
Run: 
``` 
vagrant up  
```

To run the machines


## To prepare vulnerable environments 
`vulnerable.yml` recipe prepares a vulnerable machine with CVE-2021-44228.  
It:   
* Configures the vulnerable environment   (install `java` and other stuff)
* Install docker and run a vulnerable spring docker app  (`https://github.com/christophetd/log4shell-vulnerable-app`)   


## Attacker configuration  
* Prepare an attacker machine with ldapserver and nmap    
* Install `log4j` scanner (`https://github.com/fullhunt/log4j-scan`) to test the scanner.


## To configure cyber-ranges   
`DSP.yml` recipe setup a Docker Security Playground instance in Virtualbox.    

It contains:  
- Prequirements installation
- Docker Security Playground; 
- exploit2docker script   



## How to test   
Install `vagrant` and `ansible`   
Run `vagrant up ` to configure the base environment.   
Initialize the setup: 
``` 
cd ansible
./init.sh  
```   
Now run the recipes:   
* `run_dsp.sh`: install the dsp env ;  
* `run_attacker.sh`:  configure the attacker machine;  
* `run_vulnerable.sh`: configure the vulnerability machine;   
