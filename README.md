# sample-cloud-foundry-nodejs-sidecar-app-on-docker
This is the merged Docker image combining "NodeJS App" and "Sidecar", in order to run them side by side.

## Why Docker?
Because PCF (Diego) doesn't support multiple build pack at the moment (2016-08-15)

## To Do
* Look into Cloud Foundry meta buildpack.

# Prerequisite

* Docker

# Build Instruction

1. (if needed) Compile example-sidecar with `gradle build` in the sidecar directory
2. Build the docker image with `docker build -t {docker image name}`
	1. You can run the docker image locally with `docker run -P {docker image name}`
3. Push the docker image to a repo
4. Push to Cloud Foundry with `cf push -o {repo link to docker image}`