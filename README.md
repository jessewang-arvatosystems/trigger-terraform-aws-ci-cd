# trigger-terraform-aws-ci-cd

Idea is to trigger a Terraform build using Github Actions and store the state in an S3 bucket as an alternative to Terraform Cloud.

Validate and plan builds by submitting a pull request.

On merge, AWS CodeBuild will pull from the repository's main branch and run the Terraform script 

## Configuration

### Create S3 Bucket in AWS
The S3 bucket should be named the same as the bucket and region defined in `backend.tf`

### Create an AWS IAM Role to allow Github to authenticate with the account
In the previous version, the AWS Access Id and Secret Key was used. This is fine, but grants GitHub universal access which may not be preferred.
This version restricts GitHub to a role and only allows it access to specific resources.
See https://medium.com/engineers-haven/github-actions-aws-oidc-2a35a6664d25 on how to create this

### Grant Github access to AWS
1. In the repository's settings -> Security -> Actions
2. Add secret named: `AWS_GITHUB_OIDC_ROLE` to match arn of the AWS IAM Role name, ie: arn:aws:iam::012345678910:role/YourIAMRole

### Validate PRs with GitHub actions
1. In the repository's settings -> Branches
2. Add Branch protection rule
3. Check **Require a pull request before merging**
4. Check **Require status checks to pass before merging** and **Require branches to be up to date before merging**
5. Add status check **Validate Terraform** form GitHub Actions
