# OpenWRT ICMP Ping Blocker UCI Script

This script allows you to configure an OpenWRT router to block incoming ICMP (ping) requests from the internet while allowing responses to pings from the internal network.

## Prerequisites

- You should have root access to your OpenWRT router.
- This script is designed to work on OpenWRT-based routers.

## Usage

1. Clone or download this repository to your OpenWRT router.

2. Make sure you have root access on your router. You can use the `root` account or execute the script using `sudo`.

3. Execute the script using the following command:

   ```shell
   sh /path/to/block_ping.sh
   ```

Replace /path/to/block_ping.script with the actual path to the script file.

    The script will create firewall rules to block incoming ping requests from the internet and allow responses to pings from the internal network (lan zone).

    The changes will take effect immediately.

Permissions

If you are not already logged in as the root user, you may need to execute the script with elevated privileges using sudo:

`sudo sh /path/to/block_ping.sh`

or if root

`chmod +x block_ping.sh`
