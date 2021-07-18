# distroless-crystal-example

## What's this

This is a minimal script to run [HTTP server example](https://crystal-lang.org/reference/getting_started/http_server.html) of [Crystal](https://crystal-lang.org/) language on the [distroless](https://github.com/GoogleContainerTools/distroless) container.

## How to use

```shell
docker build -t distroless-crystal-example .
docker run -p 8080:8080 -d distroless-crystal-example
```
