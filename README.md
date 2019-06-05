# docker-ubuntu-nginx-static-site
An example on how to host a simple static website using Nginx on a Ubuntu Docker image.

Build image
```bash
docker build --tag=example.com .
```

Run container
```bash
docker run -d --add-host example.com:127.0.0.1 --name wakoko -p 80:80 example.com
```
