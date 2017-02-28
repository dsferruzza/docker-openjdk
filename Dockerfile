FROM debian:jessie-backports
MAINTAINER David Sferruzza <david.sferruzza@gmail.com>

# Let the conatiner know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

# Install tools
RUN apt-get update \
 && apt-get install --no-install-recommends --yes --verbose-versions -t jessie-backports \
 openjdk-8-jdk \
 # Slim down image
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*

 # Show versions
RUN java -version
RUN javac -version
