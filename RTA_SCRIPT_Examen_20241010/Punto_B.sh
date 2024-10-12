#!/bin/bash

sudo fdisk /dev/sdc <<FIN
n
p
1

+1G
n
p
2

+1G
n
p
3

+1G
n
e


n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G

wq
FIN
sudo fdisk /dev/sdc
