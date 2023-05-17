\# Jenkins CI/CD with Terraform on Digital Ocean

This repository contains all the necessary code and configurations to set up a Jenkins CI/CD server on Digital Ocean using Terraform.

For a detailed explanation of the entire process, please visit [yuvichh.hashnode.com](https://yuvichh.hashnode.com/).

\## Prerequisites

1. Terraform installed on your system.
2. Digital Ocean account.
3. Digital Ocean CLI (Optional).

\## Setup

1. Clone this repository to your local system.
```
git clone <repository_url>

```

2. Navigate to the cloned repository.
```
cd <repository_directory>

```

3. Set up your Digital Ocean API access token as an environment variable. Replace `your_digitalocean_api_token` with your actual token.
```
export DO_PAT=your_digitalocean_api_token

```

4. Set up your SSH key fingerprint as an environment variable. Replace `your_ssh_key_fingerprint` with your actual fingerprint.
```
export SSH_FINGERPRINT=your_ssh_key_fingerprint

```

5. Initialize Terraform.
```
terraform init

```

\## Plan and Apply

1. Review your Terraform plan.
```
terraform plan

```

2. Apply your Terraform plan.
```
terraform apply

```

\## Troubleshooting

If you do not see the Jenkins IP address after running `terraform apply`, ensure that your bash commands are working properly. You can verify this by checking if the droplet has been created in your Digital Ocean dashboard.

\## Accessing Jenkins

1. Copy the IP address of your droplet from your Digital Ocean dashboard.

2. Open a web browser and navigate to `<your_droplet_ip>:8080` to access your Jenkins instance.

3. Use the initial admin password located at `/var/lib/jenkins/secrets/initialAdminPassword` for your first login.

\## Conclusion

Congratulations! You have successfully created a Jenkins instance in a Digital Ocean droplet using Terraform. 

For more information, please refer to the detailed guide available at [yuvichh.hashnode.com](https://yuvichh.hashnode.com/).

Happy Coding!
















