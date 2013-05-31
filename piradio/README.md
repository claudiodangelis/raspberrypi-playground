#piradio

1. Power your raspi on
2. Plug speakers
3. Enjoy

As a headless configuration, I suggest to use it in conjuction with
[unplug2shutdown](https://github.com/claudiodangelis/unplug2shutdown).

### Configuration

Edit the file `src/piradio.sh` by setting the URL of you favorite web radio.

### Install

Run `sudo ./install.sh`: it will copy the script to `/usr/bin` and the service
to /etc/init.d.
If you're running a Debian-based distro, it will also add the service to startup
; if you're not, you will do it on your own, accordingly to your linux distro.

### Uninstall

Just run `sudo ./uninstall.sh`

---


It requires `mplayer` and a working internet connection.