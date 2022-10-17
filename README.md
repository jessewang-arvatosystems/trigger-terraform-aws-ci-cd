# trigger-terraform-aws-ci-cd

Idea is to use AWS CodeBuild and AWS CodePipeline as an alternative to Terraform Cloud to manage Terraform builds.

Validate and plan builds by submitting a pull request.

On merge, AWS CodeBuild will pull from the repository's main branch and run the Terraform script 

## Configuration
### Grant Github access to AWS
1. In the repository's settings -> Security -> Actions
2. Add secret named: `AWS_ACCESS_KEY_ID` to match AWS Access Key ID
3. Add secret named: `AWS_SECRET_ACCESS_KEY` to match AWS Secret Access Key

### Validate PRs with GitHub actions
1. In the repository's settings -> Branches
2. Add Branch protection rule
3. Check **Require a pull request before merging**
4. Check **Require status checks to pass before merging** and **Require branches to be up to date before merging**
5. Add status check **Validate Terraform** form GitHub Actions
