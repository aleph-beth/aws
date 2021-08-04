echo "List Instances IDs :" 
listInstanceID=$(aws ec2 describe-instances | egrep InstanceId | awk -F " " '{print $2}')
echo $listInstanceID

for lIID in $listInstanceID
do
	echo "########################################"
	echo "Instance ID " $lIID
	aws ec2 describe-instances --instance-ids $lIID
done
