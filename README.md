Ubuntu based container with Infinispan

# docker-infinispan

Infinispan docker container

## Pull Images

Pull the image.

```
docker pull oscerd/infinispan
```

## Run containers

Run containers

```
docker run --name cont_infinispan -p 9990:9990 -p 8080:8080 -p 8181:8181 -p 4447:4447 -p 9999:9999 -p 8009:8009 -p 11222:11222 -p 11211:11211 -dt oscerd/infinispan 
```

## Connect to a running container

Suppose your running container is named cont_infinispan you can execute:

```
docker exec -ti cont_infinispan /bin/bash
```
