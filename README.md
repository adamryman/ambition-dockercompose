# ambition docker compose

Using multiple truss services with docker

```
make build
docker-compose up
```

If things fail, I'm working on that. The best solution right now is just stopping the docker compose with a `Ctrl-C` and doing another `docker-compose up`.

The first time it fails because `mysql` is not ready yet. Other times are random.

TODO: Get it so if the main process in a container dies, restart the container till everything is fine.
