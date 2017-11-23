# GRPC with Go + Dart on Heroku experiment

A simple GRPC service, written in Go, running on Heroku. Since Heroku doesn't
support HTTP/2, this service is exposed as an HTTP+JSON API.

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Installing

Install protoc with grpc-gateway ([instructions](https://github.com/grpc-ecosystem/grpc-gateway#installation))

Install the dart protoc plugin

```
pub global activate protoc_plugin
```

## Building the protobufs:

Run make:

```
make
```

## Building the Swagger-codegen dart client:

```
java -jar $SWAGGER_CODEGEN_LOCATION/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate \
 -i http://grpc-on-heroku.herokuapp.com/v1/helloworld/greeter/swagger \
 -l dart \
 -o swagger_dart_client
```