terraform workspace new eks
terraform workspace list

curl -o aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.9/2020-08-04/bin/linux/amd64/aws-iam-authenticator
chmod +x ./aws-iam-authenticator
mkdir -p $HOME/bin && cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && export PATH=$PATH:$HOME/bin
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc


aws iam create-role --role-name eks-admin-role --output text --query 'Role.Arn'
aws iam create-role --role-name eks-developer-role --output text --query 'Role.Arn'
