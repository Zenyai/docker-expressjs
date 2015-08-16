#
# ExpressJS Dockerfile
#
#

# Pull base image.
FROM ubuntu:trusty

# Install NodeJS.
RUN \
  apt-get update && \
  apt-get install -y nodejs npm

RUN ln -fs /usr/bin/nodejs /usr/local/bin/node

RUN npm install -g nodemon

# Define mountable directories.
VOLUME ["/var/expressjs"]

# Define working directory.
WORKDIR /var/expressjs

COPY start.sh /

# Define default command.
# CMD ["nodemon", "/var/expressjs/server.js"]
CMD ["start.sh"]

# Expose ports.
EXPOSE 80
