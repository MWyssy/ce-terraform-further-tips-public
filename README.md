# Terraform - Further Language Exploration

Throughout this repository you are going to explore some further terraform language features.

## Pre-requisites

- Completed the [intro to terraform exercises](https://github.com/northcoders/ce-intro-terraform)

- Completed the [terraform extension exercises](https://github.com/northcoders/ce-terraform-extension)

## Instructions

### 1. Variables and conditions

Using terraform variables define a variable that indicates whether or not to create an S3 bucket.

The S3 bucket name should also be driven by a variable

Your solution should include:

* A **tfvars** file called **terraform.tfvars**
* A **s3-conditional.tf** file that contains the terraform code
* A **variables.tf** file that contains your variables - the S3 variable should have a default that indicates the book should not be made




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