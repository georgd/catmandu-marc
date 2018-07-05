# Docker image catmandu-marc
Creates a docker image that bundles everything that is required for offering perl modules Catmandu and Catmandu::MARC.

* Based on [CentOS 7 docker image](https://hub.docker.com/_/centos/) provided by [The CentOS Project](https://github.com/CentOS/sig-cloud-instance-images).
* _Abstract_ image: doesn't provide any services but has to be derived by another docker image.
* [Installation guide](https://github.com/LibreCat/Catmandu/wiki/Installation#centos-7) for CentOS 7 provided by http://librecat.org/.

## Build image
* Change to the directory containing `Dockerfile`:  
  `docker build  -f ./Dockerfile -t catmandu-marc .`
