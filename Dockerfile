# Should probably build our own docker image for security
FROM rowanto/docker-java8-mvn-nodejs-npm

# Supervisor to run 2 processes in one image
WORKDIR /
RUN apt-get update && apt-get install -y supervisor
RUN sh -c 'mkdir /var/log/supervisord/'
COPY ./supervisord.conf /

# Java Sidecar app install
WORKDIR /
VOLUME /tmp
ADD ./sidecarapp/build/libs/sidecar-app-1.0.0.jar app.jar
RUN sh -c 'touch /app.jar'

# port for sidecar
EXPOSE 8086

# Node app install
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY ./nodeapp/package.json /usr/src/app/
RUN npm install
COPY ./nodeapp /usr/src/app

# port for Node
EXPOSE 80

# Run both processes
ENTRYPOINT ["/usr/bin/supervisord", "-c", "/supervisord.conf"]