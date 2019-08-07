FROM circleci/node:10
LABEL maintainer="Rhinogram, LLC"
LABEL description="Basic Docker image with Node and AWS CLI for CircleCi workspaces"

RUN sudo mkdir -p /dir
ADD dependencies.sh /dir/
WORKDIR /dir
RUN sudo apt-get install apt-utils
RUN sudo chmod +x ./dependencies.sh
RUN ./dependencies.sh

CMD /bin/bash
