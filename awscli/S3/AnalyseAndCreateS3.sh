#####
# Variable : Name of Compte 

echo "#############################"
echo "List of S3"
aws s3 ls

echo "#############################"
echo "Create Bucket S3 with COmpte Name"
aws s3 mb s3://exemple-eu-west-1-$1 --region eu-west-1
