FROM thstangenberg/java-builder:latest

MAINTAINER Thorben Stangenberg <thorben@stangenberg.net>

RUN echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list

RUN wget https://dl.bintray.com/sbt/debian/sbt-0.13.8.deb -O /tmp/sbt-0.13.8.deb

RUN sudo apt-get update

RUN sudo apt-get install -y scala

RUN sudo dpkg -i /tmp/sbt-0.13.8.deb

RUN cd ~ && sbt

# Clean up when done.
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* \
           /tmp/* \
           /var/tmp/* 
