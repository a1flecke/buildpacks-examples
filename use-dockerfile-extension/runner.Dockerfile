FROM paketobuildpacks/run-jammy-full:latest
USER root
RUN apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:chris-needham/ppa \
    && apt-get update \
    && apt-get install -y audiowaveform \
    && apt-get clean
USER cnb
