#!/bin/bash

set -eu

cat << EOF
<?xml version="1.0"?>
<installation srtype="ext">
<primary-disk>sda</primary-disk>
<keymap>us</keymap>
<root-password>somepass</root-password>
<source type="local"></source>
<admin-interface name="eth0" proto="dhcp" />
<timezone>America/Los_Angeles</timezone>
<script stage="filesystem-populated" type="url">file:///postinst.sh</script>
</installation>
EOF
