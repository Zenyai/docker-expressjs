#
# ExpressJS Dockerfile
#
#

# Pull base image.
FROM ubuntu:trusty

# Install NodeJS.
RUN \
  apt-get update && \
  apt-get install -y nodejs npm && \
  npm install -g nodemon && \
  npm install -g express

RUN sudo ln -fs /usr/bin/nodejs /usr/local/bin/node

# Define mountable directories.
VOLUME ["/var/expressjs"]

# Define working directory.
WORKDIR /var/expressjs

# Define default command.
CMD ["nodemon", "/var/expressjs/server.js"]

# Expose ports.
EXPOSE 80
