Ubuntu based container with Infinispan 7.x and Infinispan 8.x

## Pull Images

Pull the image.

For Infinispan 8.2.2.Final

```
docker pull oscerd/infinispan
```

For Infinispan 8.2.1.Final

```
docker pull oscerd/infinispan:infinispan-8.2.1.Final
```

For Infinispan 8.2.0.Final

```
docker pull oscerd/infinispan:infinispan-8.2.0.Final
```

For Infinispan 8.1.0.Final

```
docker pull oscerd/infinispan:infinispan-8.1.0.Final
```

For Infinispan 8.0.2.Final

```
docker pull oscerd/infinispan:infinispan-8.0.2.Final
```

For Infinispan 8.0.1.Final

```
docker pull oscerd/infinispan:infinispan-8.0.1.Final
```

For Infinispan 8.0.0.Final

```
docker pull oscerd/infinispan:infinispan-8.0.0.Final
```

For Infinispan 7.2.5.Final

```
docker pull oscerd/infinispan:infinispan-7.2.5.Final
```

For Infinispan 7.2.4.Final

```
docker pull oscerd/infinispan:infinispan-7.2.4.Final
```

## Run containers

Run containers

Without Authentication:

```
docker run --name cont_infinispan -p 9990:9990 -p 8080:8080 -p 8181:8181 -p 4447:4447 -p 9999:9999 -p 8009:8009 -p 11222:11222 -p 11211:11211 -dt oscerd/infinispan 
```

With default Authentication (user/password test/test):

```
docker run --name cont_infinispan -p 9990:9990 -p 8080:8080 -p 8181:8181 -p 4447:4447 -p 9999:9999 -p 8009:8009 -p 11222:11222 -p 11211:11211 -e "AUTH=true" -dt oscerd/infinispan 
```

With custom Authentication:

```
docker run --name cont_infinispan -p 9990:9990 -p 8080:8080 -p 8181:8181 -p 4447:4447 -p 9999:9999 -p 8009:8009 -p 11222:11222 -p 11211:11211 -e "AUTH_USERNAME=username" -e "AUTH_PASSWORD=password" -e "AUTH=true" -dt oscerd/infinispan 
```

## Connect to a running container

Suppose your running container is named cont_infinispan you can execute:

```
docker exec -ti cont_infinispan /bin/bash
```
