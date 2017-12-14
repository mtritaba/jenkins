FROM jenkins/jnlp-slave

MAINTAINER mtritaba@gmail.com

RUN curl -fsSL https://github.com/openshift/origin/releases/download/v3.7.0/openshift-origin-client-tools-v3.7.0-7ed6862-linux-64bit.tar.gz | tar xzf - -C /tmp && \
    cp /tmp/openshift-origin-client-tools-v3.7.0-7ed6862-linux-64bit/oc /usr/local/bin

ENTRYPOINT ["jenkins-slave"]
