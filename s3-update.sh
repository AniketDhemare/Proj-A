#!/bin/bash

echo "Start"

#aws s3api put-object --bucket aniketbucket4 --key proj-a/content-new/

#docker cp s3-docker:/app/. /tmp/content-new
aws s3 cp /app/. s3://aniketbucket4/content-new --recursive
#aws s3 cp /tmp/content-new s3://aniketbucket4/content-new --recursive

aws s3 mv s3://aniketbucket4/content s3://aniketbucket4/content-old --recursive

aws s3 mv s3://aniketbucket4/content-new s3://aniketbucket4/content --recursive

aws s3 rm s3://aniketbucket4/content-new --recursive
echo "end"