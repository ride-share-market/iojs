## IO.js Docker Image

This docker image is used as the base image for these other ridesharemarket.com application containers:

TODO: Link to github repos:

- rsm-data
- rsm-api
- rsm-app

## Development

Build local.

- `./docker-build.sh x.x.x`

Test local (will remove itself up on close).

- `sudo docker run -i -t --rm ride-share-market/iojs:x.x.x /bin/bash`
