#!/bin/bash
mkdir /swp
fallocate -l 512M /swp/.swapfile
chmod 600 /swp/.swapfile
mkswap /swp/.swapfile
swapon /swp/.swapfile
echo "/swp/.swapfile none swap defaults 0 0" >> /etc/fstab
