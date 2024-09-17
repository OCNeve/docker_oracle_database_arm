# Compile your own Oracle Database Docker image
Since there is no official version Oracle Database Docker image for ARM CPU systems, I have made this simple, one command solution. I followed the [official github repo](https://github.com/oracle/docker-images) for compiling Oracle Database. This would also work for other architectures that aren't officially supported, though I have only tested it on Apple silicone M3.

## Building the image
Once the Docker daemon is running, simply run this command:
```bash
/bin/bash ./build.sh
```
## Result
Once the process is finished, you can check for the existence of the image:
```bash
docker image ls
    REPOSITORY        TAG         IMAGE ID       CREATED         SIZE
    oracle/database   19.3.0-ee   59ad9cff5155   4 minutes ago   5.55GB
    ...               ...         ...            ...             ...
```


I hope this helps!
