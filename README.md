# jenkins-test-environment

Basic test environment for working on jenkins pipelines. 

## Details

Uses jenkins configuration-as-code to setup the environment

Customizations to the jenkins docker image are done in `Dockerfile`

Configuration of jenkins is done in `jenkins.yaml`


### Usage

Simply run `docker-compose up -d` to bring up the jenkins instance, it will be available by default at `http://localhost`

The default username/passowrd is `admin/admin`

To stop the instance run `docker-compose stop`

To destry the container run `docker-compose down`

### Plugins

Some plugins come pre-installed

```
docker-plugin
configuration-as-code
blueocean
github-branch-source
git
slack
pipeline-maven
config-file-provider
gradle
jdk-tool
```

To add more plugins simply edit the `Dockerfile` and re-run `docker-compose build`


_**Note:** It is possible to include plugins as part of the `jenkins.yaml` file, but at this moment it is not working correctly for all plugins so falling back to including in the `Dockerfile`._

### Tools

* jdk (label: `jdk8-latest`)
* docker (label: `docker-latest`)

### Pipeline Libraries

* connexta/cx-pipeline-library (label: `cx-pipeline-library`)

### Clouds

#### docker

Configured to use the docker daemon from the host system

Contains a template for a linux build agent with a label of `linux`

### Current Issues

* Some tools can not currently be configured via jcasc
  * maven
  * gradle
* oracle credentials can't be auto-configured for the jdk installer

