FROM jenkins/jenkins:2.146-alpine

RUN /usr/local/bin/install-plugins.sh docker-plugin configuration-as-code blueocean github-branch-source
