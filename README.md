# ansiblepilot
Use ansible to provision virtual machine for hadoop cluster installation.

##how to use
```
#prepare public key
cat ~/.ssh/id_rsa.pub >> authorized_keys
```

```
#add to ansible hosts
vi /etc/ansible/hosts
[horton]
192.168.0.31
#192.168.0.32
#192.168.0.33
#192.168.0.34
#192.168.0.35
:wq

```


