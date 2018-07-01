# Counter Strike 1.6 Docker Configuration

## setup

install docker, create a user, and add the docker group to that user.

```
sudo apt-get install docker
sudo useradd --force-badname cs.hagnat.nl
sudo usermod -aG docker cs.hagnat.nl
```

configure your server settings by modifying the config/server.cfg file

```
make setup
# modify the config/server.cfg file
```


make will take care of everything else.

```
make all
```

## stopping the server

if you need to stop the server, run stop and prune

```
make stop
make prune
```

## adding new maps

To add new maps, just copy them to the maps folder. You will need to restart
the server for the changes to made into effect.

If you don't have access to the server, make a Pull Request to this repository
and contact me.

## contact
- Valdir Bruxel Junior <hagnat@gmail.com>

