FROM circleci/node:6.11.2
LABEL maintainer="Rhinogram, LLC"
LABEL description="Basic Docker image with Node and AWS CLI for CircleCi workspaces"

ADD dependencies.sh ~/
WORKDIR ~
RUN sudo chmod +x ./dependencies.sh
RUN ./dependencies.sh

CMD /bin/bash
