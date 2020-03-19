FROM aio.home.io:5000/ntlsrepo/openshift3/jenkins-slave-base-rhel7:v3.11

ARG VERSION=2.16.3

RUN curl -skL -o /tmp/helm.tar.gz https://get.helm.sh/helm-v${VERSION}-linux-amd64.tar.gz && \ 
    tar -C /tmp -xzf /tmp/helm.tar.gz && \
    mv /tmp/linux-amd64/helm /usr/local/bin && \
    chmod -R 775 /usr/local/bin/helm && \
    rm -rf /tmp/helm.tar.gz && \
    rm -rf /tmp/linux-amd64 

USER 1001
