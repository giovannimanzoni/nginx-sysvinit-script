# Nginx SysVinit script
[Linux Standard Base (LSB)](http://www.linuxfoundation.org/collaborate/workgroups/lsb) compliant [SysVinit]
(http://freecode.com/projects/sysvinit) script for [nginx](http://nginx.org/).
Many thanks to https://gist.github.com/SobanVuex/6208623 for implement service nginx upgrade . I use this repo for take the upgrade code.

You need SysVinit. If you have Systemd, remove it. For example this is a how to for Debian Stretch: http://without-systemd.org/wiki/index.php/How_to_remove_systemd_from_a_Debian_Stretch_installation


## Install
```shell
git clone https://github.com/giovannimanzoni/nginx-sysvinit-script.git
cd nginx-sysvinit-script
make
#make uninstall
adduser --system --no-create-home --disabled-login --group --disabled-password nginxfront
```

## Usage
For my use, my version of this repo search for Nginx web server named nginxfront. You can rename nginxfront occurences in nginx for standard use.

You can use it via the `service` command or by directly invoking the shell script in `/etc/init.d`; what you like best.
Your shell will have auto-completion for the various keywords that are available, for instance if you type `service
nginxfront res` just hit tab for auto-completion.

```shell
service nginxfront reload
service nginxfront restart
service nginxfront try-restart
service nginxfront start
service nginxfront status
service nginxfront stop
service nginxfront upgrade
```

## Weblinks
* [LSBInitScripts - Debian Wiki](https://wiki.debian.org/LSBInitScripts)
* LSB Core Spec: [Init Script Actions: Exit Codes](http://refspecs.linuxfoundation.org/LSB_3.1.0/LSB-Core-generic/LSB-Core-generic/iniscrptact.html)
* [Ubuntu pastebin](http://paste.ubuntu.com/6918156/)

## License
> This is free and unencumbered software released into the public domain.
>
> For more information, please refer to <http://unlicense.org>
