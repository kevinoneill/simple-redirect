# simple-redirect

A simple container to redirect traffic to another server, based on `nginx:mainline-alpine`.

I built this to use inside a kubernetes cluster to route `www.example.com\<path>` to
`example.com/<path>` 

Simple Redirect requires a single environment variable `REDIRECT_SERVER` which is the server
to redirect to. The original scheme and path of the request are maintained.

## Resources

- [GitHub](https://github.com/kevinoneill/simple-redirect)
- [DockerHub](https://hub.docker.com/r/unbiasedlight/simple-redirect/)

## Configuration

- `REDIRECT_SERVER` - server to redirect to, eg. `www.google.com`
    
## Running

### Docker

```sh
docker run -e REDIRECT_SERVER=www.google.com -p 9898:80 unbiasedlight/simple-redirect
```

## Alternatives

[docker-nginx-redirect](https://github.com/schmunk42/docker-nginx-redirect/) - which also deals with fixed paths
