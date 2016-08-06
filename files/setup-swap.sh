#!/bin/bash -ex

# Create some additional temp space if t2.micro
/bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024
/sbin/mkswap /var/swap.1
/bin/chmod 600 /var/swap.1
/sbin/swapon /var/swap.1
