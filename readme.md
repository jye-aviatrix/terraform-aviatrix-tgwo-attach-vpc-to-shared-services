1. Modify **variables.tfvars**
2. Run
    terraform apply -var-file="variables.tfvars" --auto-approve

3. Or populate **variables.tf** with default values as much as possible, then run
```
    git clone https://github.com/jye-aviatrix/terraform-aviatrix-tgwo-attach-vpc-to-shared-services
    teraform init
    terraform apply -var='security_domain_name=test' -var='vpc_id=vpc-0d0865cdb2020faf9' --auto-approve
```

    Then delete the folder created
    - In Windows
        rm -r terraform-aviatrix-tgwo-attach-vpc-to-shared-services
    - In linux
        rm -rf terraform-aviatrix-tgwo-attach-vpc-to-shared-services