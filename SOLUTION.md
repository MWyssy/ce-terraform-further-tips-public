### Answers

## 1. You might have noticed a file called `.terraform.lock.hcl` - what does this file do?

> The terraform.lock.hcl file contains all of the dependencies that terraform requires to run the code that has been written. For example, if you hav written code that interacts with AWS, then the dependency that controls that connection is stored in this file.

## 2. Should you include the `.terraform.lock.hcl` within version control and if so why? or if not why not?

> Yes, the file should be included in version control. It is similar to the package.lock.json file for nodeJS projects, as it contains all of the dependencies, so is useful for making sure that everyone using the repository is using the same version of the dependencies.

## 3. Do you think a `tfvars` file should be committed to version control?

> Yes, the tfvars files should be committed to version control as they contain all of the different variable setups required for the project to run as intended.

## 4. In one of the exercises it mentioned calling the file a specific name of **terraform.tfvars**, do you think this was intentional and if so why?

> Yes, terraform willl only automatically load a tfvars file if it is named 'terraform.tfvars' or 'terraform.tfvars.json', or has the extension '.auto.tfvars' or 'auto.tfvars.json'. Naiming the file anything else will require the use of the '-var-file="_filename_.tfvars"' flag.
