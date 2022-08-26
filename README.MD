# terraform-aws
Terraform template project for AWS Instances

# Downloads
Download and install [Terraform](https://www.terraform.io/downloads).

Download and install [AWS Cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).

# Setup
After installing aws cli, configure your aws account with:
```console
aws configure
```
Inform your Access key, Secret Access key, region and set output format to json.

If you don't have an Acess key id, follow this guide to create one:
[AWS Docs](https://aws.amazon.com/blogs/security/wheres-my-secret-access-key/#:~:text=Expand%20the%20Access%20Keys%20section,on%20the%20Security%20Credentials%20tab.)


# Run
Initialize terraform with:
```console
terraform init
```
To see what actions will be executed before they are run, use:
```console
terraform plan
```
Finally apply the configurations:
```console
terraform apply
```

# Accessing the instance
After running, terraform will save the instance details.

Get the instance ip address:
```console
terraform output elastic_ip
```
You can now access the instance with:
```console
ssh -i myKey.pem ubuntu@<elastic_ip>
```

Visit the [Terraform Guide](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) for details.
