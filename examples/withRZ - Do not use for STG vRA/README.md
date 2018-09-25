# Terraform vRA Apache - with RZ

Steps:

1) Create the five files above in your own directory. main.tf, terraform.tfvars, variables.tf, outputs.tf, and .gitignore

2) Copy the information from the files on Github and put them in the respective files

3) Update the values that you need (MSID, Unix ID, App vs Web, Amount of RAM, etc...)

4) In the directory for those files, run 'terraform init', 'terraform plan', 'terraform apply'.

5) Once everything is completed, you should be able to push your code to Github if you want.

6) Make sure terraform.tfvars does NOT get passed into Github, the gitignore should prevent this, but if you see it get passed to Github, remove it immediately.
    - You can do this by running git rm terraform.tfvars, run git status to confirm that terraform.tfvars isn't going to be committed
    - If it is accidentally committed, run git rm --cached terraform.tfvars and push your changes