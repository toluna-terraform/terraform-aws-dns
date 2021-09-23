# terraform-aws-dns
Toluna [Terraform module](https://registry.terraform.io/modules/toluna-terraform/dns/aws/latest), which creates Route53 records.

## Usage
```module "dns" {
  source = "./modules/dns"
  domain = local.env_vars.domain
  records = merge(local.data_records,local.app_records)
}
```
