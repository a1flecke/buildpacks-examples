# Define the base image
FROM ubuntu:jammy

# Install packages that we want to make available at build time
RUN apt-get update && \
  apt-get install -y xz-utils ca-certificates && \
  rm -rf /var/lib/apt/lists/*

# Set required CNB user information
ARG cnb_uid=1000
ARG cnb_gid=1000
ENV CNB_USER_ID=${cnb_uid}
ENV CNB_GROUP_ID=${cnb_gid}

## Create user and group
RUN groupadd cnb --gid ${CNB_GROUP_ID} && \
  useradd --uid ${CNB_USER_ID} --gid ${CNB_GROUP_ID} -m -s /bin/bash cnb

RUN apt-get update && apt-get install -y curl && apt-get clean

# Install yarn
RUN mkdir -p /opt/yarn
WORKDIR /opt/yarn
RUN curl -L --output yarn.tgz https://github.com/yarnpkg/yarn/releases/download/v1.22.22/yarn-v1.22.22.tar.gz
RUN tar -xvzf yarn.tgz
RUN rm -rf yarn.tgz
RUN export PATH=/opt/yarn/yarn-v1.22.22/bin:$PATH
# Set user and group
USER ${CNB_USER_ID}:${CNB_GROUP_ID}

# Set required CNB target information
LABEL io.buildpacks.base.distro.name="your distro name"
LABEL io.buildpacks.base.distro.version="your distro version"