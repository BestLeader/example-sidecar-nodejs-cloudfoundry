# sample-sidecar-app
This is the sidecar application for "Sample NodeJS" in order to expose it to Eureka

# Prerequisite

* Install JDK8.
* Install [gradle](https://services.gradle.org/distributions/gradle-2.14.1-all.zip).

# Build Instruction

`gradle build`

## Running (Locally)
`gradle bootRun` - The server will be listening at `http://localhost:8086`, and is expecting "Sample NodeJS" to be available on `http://localhost:80`

## Cloud Foundry
Please refer to the parent documentation