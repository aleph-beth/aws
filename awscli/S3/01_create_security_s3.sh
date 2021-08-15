# Analyse Context

## List all bucket 
aws s3 ls

## Create bucket
## Nomenclature exmple : Name-Owner-NumberCompte-Region
aws s3 mb s3://test-exemple-me-123456789-eu-west-1 --region eu-west-1

## create micro file system
mkdir -p filesystem/01
touch filesystem/01/A.txt
touch filesystem/01/B.txt
touch filesystem/01/C.txt
cp filesystem/01/* filesystem/02 
cp filesystem/01/* filesystem/03

## Copy all file in file system
aws s3 cp filesystem s3://test-exemple-me-123456789-eu-west-1 --recursive

### List directory
aws s3 ls s3://test-exemple-me-123456789-eu-west-1

## Remove bucket
aws s3 rb s3://test-exemple-me-123456789-eu-west-1 --region eu-west-1
