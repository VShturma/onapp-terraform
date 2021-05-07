FROM jenkins/inbound-agent

ARG GOPATH=/usr/local/go
ENV PATH=$PATH:/usr/local/go/bin

USER root

RUN apt-get update && apt-get -y install sshpass wget git unzip make

RUN wget https://releases.hashicorp.com/terraform/0.14.10/terraform_0.14.10_linux_amd64.zip && \
    unzip terraform_0.14.10_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm -f terraform_0.14.10_linux_amd64.zip

RUN wget https://golang.org/dl/go1.16.3.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.16.3.linux-amd64.tar.gz && \
    rm -f go1.16.3.linux-amd64.tar.gz

COPY terraform-provider-onapp $GOPATH/src/github.com/terraform-providers/terraform-provider-onapp

WORKDIR $GOPATH/src/github.com/terraform-providers/terraform-provider-onapp
RUN make 

WORKDIR /workDir
