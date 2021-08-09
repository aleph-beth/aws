aws iam create-user --user-name Advisor
aws iam attach-user-policy --user-name Advisor --policy-arn arn:aws:iam::aws:policy/AWSCloudTrail_FullAccess
