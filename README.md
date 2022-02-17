# Repository for learning Terraform OSS
This repository has been created only for learning purposes to create a `null resource` in 2 different AWS regions

### Prerequisites

- [X] [Terraform](https://www.terraform.io/downloads)
- [X] [AWS Account](https://signin.aws.amazon.com/signin?redirect_uri=https%3A%2F%2Fportal.aws.amazon.com%2Fbilling%2Fsignup%2Fresume&client_id=signup&code_challenge_method=SHA-256&code_challenge=goaHJzR6L_4316BbJ-3mYe5YqoOcQY7fKzTaPrN2SyA)

## How to Use this Repo

- Clone this repository:
```shell
git clone git@github.com:dlavric/tf-2regions.git
```

- Go to the directory where the repo is stored:
```shell
cd tf-2regions
```

- Export your AWS credentials in your terminal:
```shell
export AWS_ACCESS_KEY_ID=...
export AWS_SECRET_ACCESS_KEY=...
export AWS_SESSION_TOKEN=...
```


- Run `terraform init`, to download any external dependency
```shell
terraform init
```


This is the output of initializing the Terraform code:
```shell
Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
- Finding latest version of hashicorp/null...
- Using previously-installed hashicorp/aws v3.74.1
- Installing hashicorp/null v3.1.0...
- Installed hashicorp/null v3.1.0 (signed by HashiCorp)

Terraform has made some changes to the provider dependency selections recorded
in the .terraform.lock.hcl file. Review those changes and commit them to your
version control system if they represent changes you intended to make.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

- Apply the changes with Terraform
```shell
terraform apply
```

This is the output for applying the changes:
```shell
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # null_resource.null[0] will be created
  + resource "null_resource" "null" {
      + id = (known after apply)
    }

  # null_resource.null[1] will be created
  + resource "null_resource" "null" {
      + id = (known after apply)
    }

  # null_resource.null[2] will be created
  + resource "null_resource" "null" {
      + id = (known after apply)
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

null_resource.null[1]: Creating...
null_resource.null[2]: Creating...
null_resource.null[0]: Creating...
null_resource.null[1]: Provisioning with 'local-exec'...
null_resource.null[0]: Provisioning with 'local-exec'...
null_resource.null[2]: Provisioning with 'local-exec'...
null_resource.null[0] (local-exec): Executing: ["/bin/sh" "-c" "echo The number is 0"]
null_resource.null[1] (local-exec): Executing: ["/bin/sh" "-c" "echo The number is 1"]
null_resource.null[2] (local-exec): Executing: ["/bin/sh" "-c" "echo The number is 2"]
null_resource.null[0] (local-exec): The number is 0
null_resource.null[1] (local-exec): The number is 1
null_resource.null[1]: Creation complete after 0s [id=7512020499674316565]
null_resource.null[0]: Creation complete after 0s [id=4574653230370836931]
null_resource.null[2] (local-exec): The number is 2
null_resource.null[2]: Creation complete after 0s [id=8706799780552385534]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
```

## Reference Documentation

- [Null Resource](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource)

- [AWS Account and Access Keys](https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html)
