FROM debian:jessie-backports
MAINTAINER David Sferruzza <david.sferruzza@gmail.com>

# Let the conatiner know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

# Install tools
RUN apt-get update \
 && apt-get install -y \
 openjdk-8-jdk

 # Show versions
RUN java -v
RUN javac -v

# Slim down image
RUN apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*
