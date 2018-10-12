FROM jenkins/jenkins:2.146-alpine

RUN /usr/local/bin/install-plugins.sh \
  docker-plugin \
  configuration-as-code \
  blueocean \
  github-branch-source \
  apache-httpcomponents-client-4-api \
  git \
  slack \
  pipeline-maven \
  config-file-provider \
  gradle \
  jdk-tool

ENV JAVA_OPTS "-Djenkins.install.runSetupWizard=false ${JAVA_OPTS:-}"
