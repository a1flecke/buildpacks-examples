FROM paketobuildpacks/build-jammy-tiny:latest
ARG CNB_USER_ID=1001
ARG CNB_GROUP_ID=1000
ARG STACK_ID=o.buildpacks.stacks.jammy.tiny
USER root
RUN mkdir -p /opt/yarn
WORKDIR /opt/yarn
RUN pwd && ls -al
RUN curl -L --output yarn.tgz https://github.com/yarnpkg/yarn/releases/download/v1.22.22/yarn-v1.22.22.tar.gz
RUN pwd
RUN ls -al
RUN tar -xvzf yarn.tgz
RUN rm -rf yarn.tgz
RUN export PATH=/opt/yarn/yarn-v1.22.22/bin:$PATH
ENV CNB_USER_ID=1000
USER ${CNB_USER_ID}