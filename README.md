# redhole

A Pi-Hole-alike for NetBSD

## Plan

I'm attempting to stick to things part of the NetBSD base system. That means:

* Management interface written in [Lua](https://www.lua.org/), mounted on
  bozohttpd with `-L`. The main reason for chosing it other any other language
  is that it's already bundled with NetBSD, and comes bundled with some
  potentially useful bindings, and it's a chance to refamiliarise myself with
  the language.
* Either unbound/named as a recursor. I'm leaning towards named as I also want
  to implement a hidden master DNS server for another project.
* Replace my DSL modem/router's DHCP server with dhcpd, which will be managed
  by the management interface.
* Chose between ipfilter or npf, as this needs a firewall too.
* Decide between using sqlite or a bunch of flat files for storage. Flat files
  have the advantage that they could be version-controlled and/or put on an
  NFS mount, which would help reduce SD card wear.

## Deployment

I'd usually use Ansible for this kind of thing, but this time around, I'm
considering using Fabric instead.
