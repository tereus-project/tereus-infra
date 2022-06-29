# Infra

## Terraform

Terraform state is stored on a Scaleway bucket.

```sh
export SCW_ACCESS_KEY=
export SCW_SECRET_KEY=
export SCW_DEFAULT_PROJECT_ID=
export AWS_ACCESS_KEY_ID=$SCW_ACCESS_KEY
export AWS_SECRET_ACCESS_KEY=$SCW_SECRET_KEY
export DIGITALOCEAN_TOKEN=
export DIGITALOCEAN_ACCESS_TOKEN=
```

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
