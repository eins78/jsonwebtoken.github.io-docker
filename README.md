# jsonwebtoken.github.io-docker

Dockerfile and image publishing pipeline for self-hosting the [jwt.io website](https://jwt.io) (namely the Debugger).

Upstream Repo: <https://github.com/jsonwebtoken/jsonwebtoken.github.io>

## Usage

summary:

```sh
docker run --rm -e PORT=8080 -p8080:8080 ghcr.io/eins78/jsonwebtoken-github-io:main
```

environment variables:

* PORT: port to listen on (default: 3000)

## Published Docker Images

* [Github Container Registry](https://github.com/eins78/jsonwebtoken.github.io-docker/pkgs/container/jsonwebtoken-github-io): `ghcr.io/eins78/jsonwebtoken-github-io:main`

## Acknowledgments

Thanks to [Auth0](https://auth0.com/developers?utm_source=GHsponsor&utm_medium=GHsponsor&utm_campaign=jwtio&utm_content=auth) for providing the [JWT.io Debugger](https://jwt.io/#debugger-io) and [JWT.io](https://jwt.io) website under an open source license.
