# Project


_**Installation of Wordpress with ansible**_


### **ANSIBLE PART**


**Ansible file:** _playbook.yml_ and the directory _roles_

To execute playboook.yml do : 
```
ansible-playbook playbook.yml -i hosts -u host1.example.org -K ( mais je n'arrive pas à corriger mon erreur) 
```
` 

### **TERRAFORM PART**

**Terraform file:**  _main.tf_ _variables.tf_
- create _variables.tfvars_, and put the value of your variables inside:
```
scw_token="X"

organization="X"
```
- Run 

```terraform init``` 

then ```terraform plan -var-file="variables.tfvars"```

then ```terraform apply -var-file="variables.tfvars"```

then ```terraform destroy -var-file="variables.tfvars"```

### **PACKER PART**
**Packer file:** _packer.json_

my config:


- In the _.bashrc_ file write :

```
export SCW_TOKEN=<your_token> 

export SCALEWAY_ORGANIZATION=<your_organization_id>

```

- Run ```packer build  packer.json```
