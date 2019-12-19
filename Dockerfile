ARG VERSION=latest
FROM ubuntu:${VERSION}

RUN apt update
RUN apt-get install -y unzip
RUN apt-get install -y wget
RUN apt-get install -y git
RUN wget https://releases.hashicorp.com/terraform/0.11.14/terraform_0.11.14_linux_amd64.zip
RUN wget https://github.com/cloudfoundry-incubator/credhub-cli/releases/download/2.2.1/credhub-linux-2.2.1.tgz
RUN unzip terraform_0.11.14_linux_amd64.zip
RUN install terraform /usr/local/bin/
RUN tar -xzf credhub-linux*.tgz -C /usr/local/bin/
