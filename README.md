# Content Security Policy Generator Docker Environment

## Introduction

This is the Docker Compose environment for 4ARMED's Content Security Policy Generator. Basically, using the contents of this repository you can fire up your own instance of the CSP Generator tool, send your CSP violation reports to it via report-uri and then generate an initial policy for your website.

## Prerequisites

1. Docker Engine
   I know! Go figure right?! You will need Docker Engine installed and running somewhere. If you want to do this on the Interwebs then Digital Ocean's one click Docker app is a good option.

2. Docker Compose
   If you use Digital Ocean's one click app it does not come with Docker Compose installed by default so you will need to install it:

   ```shell
   # apt-get update
   # apt-get install docker-compose
   ```

3. TLS Key and Certficate (optional)
   If you are going to send CSP reports from an HTTPS-enabled web site your browser will not allow plain HTTP connections for the report-uri. This means you will need a valid certificate. If this is going on the public Interwebs you may consider [buying one](https://www.namecheap.com/security/ssl-certificates.aspx).

   You should end up with a private key and a signed certificate from your chosen CA.

## Getting Ready

1. Clone this repo

This must be done on your Docker host as the container makes use of volumes to access the TLS key and certificate. 

```shell
$ git clone https://github.com/4ARMED/csp-generator.git
```

2. Install your TLS key and cert

SCP (or some other file transfer) your TLS key and cert onto your Docker host. Both the key and certificate files must be copied to the certs subfolder of this repository clone and named server.key and server.crt respectively.

```shell 
cd csp-generator
find certs/
certs/
certs/server.key
certs/server.crt
certs/.gitkeep
```

(The .gitkeep came from the repo, don't be alarmed ;-))

3. Start it all up

```shell
docker-compose up
```


