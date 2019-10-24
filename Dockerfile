
FROM python:3.8-alpine3.10

RUN apk update && apk --no-cache add curl 
RUN curl -sL https://storage.googleapis.com/kubernetes-release/release/v1.14.0/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && chmod a+x /usr/local/bin/kubectl
RUN pip install awscli --upgrade
