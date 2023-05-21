# Terraform - Further Language Exploration

Throughout this repository you are going to explore some further terraform language features.

## Pre-requisites

- Completed the [intro to terraform exercises](https://github.com/northcoders/ce-intro-terraform)

- Completed the [terraform extension exercises](https://github.com/northcoders/ce-terraform-extension)

## Instructions

### 1. Growing your toolset

If you are using VS Code to write your terraform, take a look at the VS Code extension

[Hashicorp Terraform VS Code Extension](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform)

Have a read over some of the tips and try installing it into your VS Code setup.

### 2. Variables and conditions

Using terraform variables define a variable that indicates whether or not to create an S3 bucket.

The S3 bucket name should also be driven by a variable

Your solution should include:

* A **tfvars** file called **terraform.tfvars**
* A **s3-conditional.tf** file that contains the terraform code
* A **variables.tf** file that contains your variables - the S3 variable should have a default that indicates the book should not be made

### 3. Modules

A Terraform module is a collection of Terraform configuration files that can be used to create a specific type of infrastructure. 

Modules are a way to organise and reuse Terraform code, and they can be used to create complex infrastructure with a single command.

In this exercise you will create your own custom [Terraform module](https://developer.hashicorp.com/terraform/language/modules)

Your module should create:

* An EC2 instance within the default VPC
* A new key pair for the instance
* A security group that allows SSH from your IP address (see if you can work out a dynamic way of obtaining your IP address)

**🗒️ Note:** Avoid using hard coded inputs within your module. For example the VPC ID should be an input to the module and not hard coded so that the module is re-usable by other people. There are a number of opportunities where you should avoid using hard coded aspects - each time you find yourself hard coding a value such as the instance name then think about how you can allow that to be variable driven and configured instead of hard coded.

You should then make use of your module within a **module-use-example.tf**


## Written questions

1. You might have noticed a file called `.terraform.lock.hcl` - what does this file do?

2. Should you include the `.terraform.lock.hcl` within version control and if so why? or if not why not?

3. Do you think a `tfvars` file should be committed to version control? 

4. In one of the exercises it mentioned calling the file a specific name of **terraform.tfvars**, do you think this was intentional and if so why?



## Tearing things down

You should just be able to run `terraform destroy`

## Submission process

1. Fork this GitHub repository

2. Make regular commits and pushes back to your repository as you write your code. At a minimum commit and push when indicated in the instructions but feel free to commit more often. It help us to see the journey you worked through when completing the task.

3. Share your GitHub link

4. Tear things down as described above

## Further reading

[How to build and use your own terraform module](https://developer.hashicorp.com/terraform/tutorials/modules/module-create)