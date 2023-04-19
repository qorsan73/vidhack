# Dockerfile

# Script       : vidhack
# Author       : qorsan73
# Github       : https://github.com/qorsan73
# Messenger    : https://m.me/qorsan73
# Email        : mostafaaldby@gmail.com
# Date         : 19-04-2023
# Main Language: Shell

# Download and import main images

# Operating system
FROM debian:latest

# Author info
LABEL MAINTAINER="https://github.com/qorsan73/vidhack"

# Working directory
WORKDIR /vidhack/
# Add files 
ADD . /vidhack

# Installing other packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl unzip wget -y
RUN apt-get install --no-install-recommends php -y
RUN apt-get clean

# Main command
CMD ["./vh.sh", "--no-update"]

## Wanna run it own? Try following commnads:

## "sudo docker build . -t qorsan73/vidhack:latest", "sudo docker run --rm -it qorsan73/vidhack:latest"

## "sudo docker pull qorsan73/vidhack", "sudo docker run --rm -it qorsan73/vidhack"
