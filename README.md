# trigger-terraform-aws-ci-cd

Idea is to use AWS CodeBuild and AWS CodePipeline as an alternative to Terraform Cloud to manage Terraform builds.

Validate and plan builds by submitting a pull request.

On merge, AWS CodeBuild will pull from the repository's main branch and run the Terraform script 
