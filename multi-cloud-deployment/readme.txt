Initialize Terraform: Open a terminal or command prompt, navigate to the root directory of your project (where your main Terraform files are located), and run the following command to initialize your Terraform project:

terraform init:
This command initializes your project and downloads any necessary providers.

Select the Environment: Choose the environment you want to deploy (e.g., "dev," "staging," or "production"). You can do this by navigating to the environment-specific directory, for example:

cd environments/dev
Run Terraform Plan: Before making any changes, it's a good practice to run a Terraform plan to see what changes will be applied. This is a dry run of your deployment, and it helps you verify your configuration. Run the following command:

terraform plan
Review the plan output to ensure it matches your expectations.

Apply Changes: If the plan looks good and you're ready to deploy your infrastructure, run the following command to apply the changes:
terraform apply
Terraform will prompt you to confirm the changes. Type "yes" to proceed.

Deploy to Other Environments: Repeat steps 4-6 for other environments, selecting the respective environment-specific directory.

To switch to the staging environment, for example:

cd environments/staging
And then run terraform apply to deploy to the staging environment.

Destroy Resources (Optional): To tear down the resources created in an environment, you can use the terraform destroy command in the environment-specific directory. Be careful when running this command, as it will remove all the resources created for the specific environment.

terraform destroy