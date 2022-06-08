# Infra

## Terraform

Terraform state is stored on a Scaleway bucket.

```sh
cd terraform/
source .env
terraform init
terraform plan
terraform apply
```

## Ansible

```sh
ansible-galaxy install -r requirements.yml
ansible-playbook playbook.yml
```
