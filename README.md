# GoInDock

![Go&Docker](https://www.callicoder.com/assets/images/post/large/docker-golang-image-container-example.jpg)

No more need to install Golang on your computer, use docker instead with this development environment. 

## What's in this ?

* Alpine as Operating System
* Golang (latest version)
* Git
* Fully configured Vim for Golang

## How to use it ?

Get the docker-compose.yml :

```
curl -fLo docker-compose.yml https://raw.githubusercontent.com/dimensi0n/goindock/main/docker-compose.yml
```

Up all that stuff :

```
docker-compose up -d
```

Then run the environment :

```
docker-compose run go
```

Once you've done that you are inside your new development environment, get or clone your project and you can start working on it :)

### Ports
If you want your app to be exposed outside of your container, run it on the port 8080, then you can go on https://localhost:8080 on your web browser
