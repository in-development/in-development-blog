#In development - Blog

Usage
-------------

To start to contribute with this project is necessary just two commands.
With Docker installed in your machine run:

```
$ docker build -t in-development-blog .
$ docker run -it --rm --name blog -v /$(pwd)/src:/app/src -p 8000:8000 in-development-blog
```

With this command is possible access the source running in the Docker ip and port 8000.


Service end-point
--------------------

To access the end-point to read the posts we have this address:

```
https://in-development.firebaseio.com/posts.json
```

This end-point is public to read.
