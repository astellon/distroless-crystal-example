FROM crystallang/crystal:latest-alpine as build

ADD . /app
WORKDIR /app/helloworld

RUN crystal build --static src/helloworld.cr

FROM gcr.io/distroless/cc
COPY --from=build /app /app
WORKDIR /app/helloworld
CMD ["./helloworld"]