# Netatalk, Samba and Transmission in Docker

This repository combined three components together: Netatalk, Samba and Transmission. These three provides basic functionalities of a NAS: remote file access and remote download.

## Usage

By default, this server consists of two users, admin and guest.

Admin has `r+w` permission to access `Documents` folder, guest has `r` permission to access `Downloads` folder, and anonymous user cannot access anything.

Transmission will download file into `Downloads` folder.

### Step 1

Modify `.env` file to change each username and password as you like.

### Step 2

Run the following command (assume you have already installed docker and docker-compose)

```
$ docker-compose up
```

### Step 3

Access afp://\$server_ip:548 to verify Netatalk has started up, smb://\$server_ip:445 to verify Samba has started up, and http://\$server_ip:9091 to verify Transmission has started up.

## Acknowledgments

This repository is based on @cilix's [work](https://github.com/cilix-lab/docker-netatalk) to convert Netatalk into a docker container, @Stanback's [work](https://github.com/Stanback/alpine-samba) to convert Samba into a docker container and @linuxserver's [work](https://github.com/linuxserver/docker-transmission) to convert Transmission into a docker container.
