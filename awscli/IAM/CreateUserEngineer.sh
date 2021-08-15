aws iam create-user --user-name Engineer
aws iam attach-user-policy --user-name Engineer --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess
