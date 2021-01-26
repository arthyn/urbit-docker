# Urbit Docker Image

These files will allow you to create a docker image which will boot up a new comet when a container is run. The comet's information will be sent to stdout and also placed inside `/urbit-data` in the container.

You can start it up like this, assuming you name your image `urbit`:

```bash
docker run -d -p 8888:80 --name urbit-1 urbit
```

It takes a little while for urbit to mine a comet, but once you see the code in the output or in `/urbit-data/id.txt`, you can open `localhost:8888` to access Landscape.