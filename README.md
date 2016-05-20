# ansiblepilot
Use ansible to provision virtual machine for hadoop cluster installation.

## how to use
After clone this project, following the steps below.
Please note that the config needs to be adapted to the host RAM.  

1.Prepare public key
```
cat ~/.ssh/id_rsa.pub >> authorized_keys
```
2.Prepare hosts file
```
vi clusterhosts
```
3.Add cluster ips to ansible hsots
```
vi /etc/ansible/hosts
[horton]
192.168.0.31
192.168.0.32
192.168.0.33
192.168.0.34
192.168.0.35
:wq

```
4.Adapt config in Vagrantfile
```
vi Vagrantfile
```
5.Start the vm
```
vagrant up
```
6.Ansible play
```
#test ansible
ansible horton -m ping -u root
#provision hdp vm
ansible-playbook hdp_provision.yml
```
Reay to go for hdp cluster installation!

## files description
- Vagrantfile
- authorized_keys: need to be overwrite
- clusterhosts:  cluster hosts file that will be used in all the vm
- hdp_provision.ym:   ansible playbook
- provision.sh:   script used in playbook
