# Docker scala-builder

scala build container for drone ci

Dockerhub: [thstangenberg/scala-builder][dockerhub]

## Features ##

- [Scala][SCALA]
- [Sbt][SBT]


## Exposed volumes ##

None.


## Exposed ports ##

- 22 / SSH 


## Environment Variables

None.


## Usage ##

write `image: thstangenberg/scala-builder` in your .drone.yml


## Build 

Make is used as build system.

- `make` / starts normal docker build.
- `make run` / build and run the container. This uses `scala-builder` as container name and automatically stops a running container with an equal name beforehand. 
- `make bash` /  build, run the container and start a bash prompt.
- `make ncbuild` / normal build without using the docker cache ( --no-cache ).

[Docker Build Reference https://docs.docker.com/reference/builder/](https://docs.docker.com/reference/builder/)


## License ##

[Published under the MIT License][LICENSE]

[SCALA]: http://www.scala-lang.org/
[SBT]: http://www.scala-sbt.org/
[DOCKERHUB]: https://hub.docker.com/u/thstangenberg/docker-scala-builder
[LICENSE]: https://bitbucket.org/thstangenberg/docker-scala-builder/src/master/LICENSE.md "Published under the MIT License"
