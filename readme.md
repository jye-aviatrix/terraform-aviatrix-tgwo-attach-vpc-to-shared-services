1. Modify **variables.tfvars**
2. Run
    terraform apply -var-file="variables.tfvars" --auto-approve

3. Or populate **variables.tf** with default values as much as possible, then run
    terraform apply -var='security_domain_name=test' -var='vpc_id=vpc-0d0865cdb2020faf9' --auto-approve