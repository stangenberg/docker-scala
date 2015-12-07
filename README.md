# Docker scala

A docker container featuring [Scala][SCALA] & [Sbt][SBT].

Dockerhub: [stangenberg/scala][dockerhub]


## Features ##

- [Scala][SCALA]
- [Sbt][SBT]


## Exposed volumes ##

None.


## Exposed ports ##

- 22 / SSH


## Environment Variables

- SCALA_VERSION : installed scala version
- SBT_VERSION : installed sbt version

## Usage ##

### With [Drone][DRONE]
add `image: stangenberg/scala` to your .done.yml to use the latest version.


## Build

Make is used as build system.

- `make` / starts normal docker build.
- `make run` / build and run the container. This uses `scala` as container name and automatically stops a running container with an equal name beforehand.
- `make bash` /  build, run the container and start a bash prompt.
- `make ncbuild` / normal build without using the docker cache ( --no-cache ).

[Docker Build Reference https://docs.docker.com/reference/builder/](https://docs.docker.com/reference/builder/)


## License ##

[Published under the MIT License][LICENSE]

[SCALA]: http://www.scala-lang.org/
[SBT]: http://www.scala-sbt.org/
[DOCKERHUB]: https://hub.docker.com/u/stangenberg/scala
[LICENSE]: https://github.com/stangenberg/docker-scala/blob/master/LICENSE.md
