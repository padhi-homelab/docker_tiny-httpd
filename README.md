# docker_tiny-httpd <a href='https://github.com/padhi-homelab/docker_tiny-httpd/actions?query=workflow%3A%22Docker+CI+Release%22'><img align='right' src='https://img.shields.io/github/workflow/status/padhi-homelab/docker_tiny-httpd/Docker%20CI%20Release?logo=github&logoWidth=24&style=flat-square'></img></a>

<a href='https://hub.docker.com/r/padhihomelab/tiny-httpd'><img src='https://img.shields.io/docker/image-size/padhihomelab/tiny-httpd/latest?label=size%20%5Blatest%5D&logo=docker&logoWidth=24&style=for-the-badge'></img></a>
<a href='https://hub.docker.com/r/padhihomelab/tiny-httpd'><img src='https://img.shields.io/docker/image-size/padhihomelab/tiny-httpd/testing?label=size%20%5Btesting%5D&logo=docker&logoWidth=24&style=for-the-badge'></img></a>

A multiarch [tiny-httpd] Docker image, based on [Alpine Linux].

|        386         |       amd64        |       arm/v6       |       arm/v7       |       arm64        |      ppc64le       |       s390x        |
| :----------------: | :----------------: | :----------------: | :----------------: | :----------------: | :----------------: | :----------------: |
| :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |


## Usage

> **Warning**
> NOT FOR PROD.
> The goal of this image is to be reasonably fast and have a tiny footprint on both storage and memory.
> Security and privacy are NOT key goals!
> This image was designed to serve files on a local or internal network,
> not to be exposed to the public internet.

```
docker run -p 8080:80 \
           -v /path/to/my/www:/www
           -it padhihomelab/tiny-httpd
```

Runs `tiny-httpd` server on port `8080`.



[Alpine Linux]:  https://alpinelinux.org/
[tiny-httpd]:    http://www.acme.com/software/thttpd/
[services/hass]: https://github.com/padhi-homelab/services/tree/master/hass
