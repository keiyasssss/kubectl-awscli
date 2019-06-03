# docker build -t "kubectl-awscli:latest" .

FROM python:alpine

RUN apk update && apk --no-cache add curl 

# Install kubectl
RUN curl -sL https://storage.googleapis.com/kubernetes-release/release/v1.14.0/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && chmod a+x /usr/local/bin/kubectl

# Install awscli
RUN pip install awscli --upgrade