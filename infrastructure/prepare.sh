cd ./policies
empty=""
for i in *.json; do aws --endpoint-url=http://localhost:4566 iam create-role --role-name "${i}" --assume-role-policy-document "file://${i}"; done
cd ..
cd ./lambdas
for i in *.zip; do aws --endpoint-url=http://localhost:4566 lambda create-function --function-name "${i/.zip/$empty}" --zip-file "fileb://${i}" --handler index.handler --runtime nodejs12.x --role arn:aws:iam::000000000000:role/roleLambdaOlaMundo; done

for i in *.zip; do aws --endpoint-url=http://localhost:4566 logs create-log-group --log-group-name "/aws/lambda/${i/.zip/$empty}"; done
rm -f {*.zip,.*.zip}