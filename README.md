A server app built using [Shelf](https://pub.dev/packages/shelf),

# Running the sample

## Running with the Dart SDK

You can run the example with the [Dart SDK](https://dart.dev/get-dart) like this:

```
$ dart run bin/server.dart
```
Request formats are - You could use any `int` as User ID and any `string` as User Role
- `host:port/admin/user/<id>/<role>`
- `host:port/admin/post/<id>`
- `host:port/admin/comment/<id>`


And then from a second terminal:
```
$ curl http://localhost:8080
$ curl http://localhost:8080/admin
$ curl http://localhost:8080/admin/user/937193
$ curl http://localhost:8080/admin/user/917191/diamond
$ curl http://localhost:8080/admin/post
$ curl http://localhost:8080/admin/post/79329
$ curl http://localhost:8080/admin/comment
$ curl http://localhost:8080/admin/comment/912791
```

## Running with Docker

If you have [Docker Desktop](https://www.docker.com/get-started) installed, you
can build and run with the `docker` command:

```
$ docker build . -t server
$ docker run -it -p 8080:8080 server
```

And then from a second terminal in following format:
```
$ curl `localhost:8080/admin/user/<id>/<role>`
$ curl `localhost:8080/admin/post/<id>`
$ curl `localhost:8080/admin/comment/<id>`
```

The requests Handler path and response body will be logged in the terminal. 
