Credentails setup:

- install aws cli if you dont have one.
- create access key and secret key for your user.

- Do to vim ~/.aws/credentials
        
    place your access key and secret key in this way
    [profile_name]
    aws_access_key_id=AKIA**********
    aws_secret_access_key=PQq******************


Terraform 

Go to the main folder.
Set this profile name `profile_name` in config.tfvars inside config folder.

And perform first these setps
 
    terraform init
    terraform plan -var-file="../config/config.tfvars"  --> produce a plan
    terraform apply -var-file="../config/config.tfvars" --> will create resources


Caution:
4- terraform destroy -var-file="../config/config.tfvars" --> will destroy resources
