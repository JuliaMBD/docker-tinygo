# docker-tinygo-ide

A docker image for a lightweight integrated development environment for TinyGo

## Installed packages

- TinyGo: 0.26.0
- Go: 1.18.8
- Code-Server: latest (4.8.3)
- binutils
- minicom
- gcc-avr avr-libc avrdude
- xtensa-esp32-elf

## Usage

```sh
docker run -it --rm --name tinygo-ide \
    -p 8080:8080 \
    -v $PWD:/home/vscode \
    -e VSCODE_PASSWORD=password \
    -e VSCODE_USER=vscode \
    -e VSCODE_UID=1000 \
    -e VSCODE_HOME=/home/vscode \
    okamumu/tinygo-ide
```

If /dev/ttyACM0 exists, you can do it.

```sh
docker run -it --rm --name tinygo-ide \
    -p 8080:8080 \
    --device=/dev/ttyACM0:/dev/ttyACM0 \
    -v $PWD:/home/vscode \
    -e VSCODE_PASSWORD=password \
    -e VSCODE_USER=vscode \
    -e VSCODE_UID=1000 \
    -e VSCODE_HOME=/home/vscode \
    okamumu/tinygo-ide
```

## Environment

- VSCODE_UID: uid for login user
- VSCODE_USER: username for login user
- VSCODE_PASSWORD: password for login user
- VSCODE_GID: gid for the group of login user
- VSCODE_GROUP: groupname for the group of login user
- VSCODE_HOME: home directory for login user
- VSCODE_GRANT_SUDO: The grant of sudo
    - yes: the user can execute sudo but the password is required
    - no: the user cannot execute sudo
    - nopass: the user can execute sudo without password

