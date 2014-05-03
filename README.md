vm-templates
============
It is suggested that you change the aggieops password or remove the
user altogether.

- `aggieops` - username with sudoer rights
- `aggieops` - password for aggieops user and root (except ubuntu b/c idk)

HTTP Server
-----------
The easiest way to server up the auto install files (preseed, kickstart, etc) and
serve up the vmware-tools is to add the vmware-tools tar balls to http/vmware-tools
and run:

```shell
docker/run_container.sh
```

SLES
----

```shell
packer build -var 'http=<your_local_ip>:8080' -var 'mirror=<remote_or_local_path_to_ios>' sles-11-sp3-x86_64.json
```

Ubuntu
------

```shell
packer build -var 'http=<your_local_ip>:8080' ./ubuntu-12.04-amd64.json
```
