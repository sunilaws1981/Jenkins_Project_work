#/bin/bash

DATE=$(date +%H-%M-%S)
BACKUP=db-$DATE.sql
DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3
AWS_SECRET=$4
BUCKET_NAME=$5

mysqldump -u root -h $DB_HOST -p$DB_PASSWORD $DB_NAME > /tmp/$BACKUP
echo "setting AWS Keys"
export AWS_ACCESS_KEY_ID=AKIATQD5MPKBZOFMFNVK
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET
echo "uploading your $BACKUP"
aws s3 cp /tmp/db-$DATE.sql s3://$BUCKET_NAME/$BACKUP

