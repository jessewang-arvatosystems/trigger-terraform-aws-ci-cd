# trigger-terraform-aws-ci-cd

Idea is to use AWS CodeBuild and AWS CodePipeline as an alternative to Terraform Cloud to manage Terraform builds.

Validate and plan builds by submitting a pull request.

On merge, AWS CodeBuild will pull from the repository's main branch and run the Terraform script 

## Configuration
1. Fork the repo
2. In the repository's settings -> Security -> Actions
3. Add secret named: `AWS_ACCESS_KEY_ID` to match AWS Access Key ID
4. Add secret named: `AWS_SECRET_ACCESS_KEY` to match AWS Secret Access Key
