#####
# Variable : Name of Compte 

echo "#############################"
echo "List of S3"
aws s3 ls


if [ ! -z $1 ]
then
	echo "#############################"
	echo "Create Bucket S3 with Bucket Name"
	aws s3 rb s3://$1 --region eu-west-1
fi
