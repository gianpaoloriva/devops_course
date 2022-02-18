# AWS CLI


    docker run --rm -it amazon/aws-cli --version
    
    docker run --rm -it --env AWS_ACCESS_KEY_ID= --env AWS_SECRET_ACCESS_KEY= amazon/aws-cli s3 ls
    
    docker run --rm -ti -v ~/.aws:/root/.aws amazon/aws-cli s3 ls

  
documents link:

https://awscli.amazonaws.com/v2/documentation/api/latest/reference/index.html

https://docs.aws.amazon.com/cli/index.html