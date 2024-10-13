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
sudo fdisk -l /dev/sdc
sudo mkfs.ext4 /dev/sdc1
sudo mkfs.ext4 /dev/sdc2
sudo mkfs.ext4 /dev/sdc3
sudo mkfs.ext4 /dev/sdc5
sudo mkfs.ext4 /dev/sdc6
sudo mkfs.ext4 /dev/sdc7
sudo mkfs.ext4 /dev/sdc8
sudo mkfs.ext4 /dev/sdc9
sudo mkfs.ext4 /dev/sdc10
sudo mkfs.ext4 /dev/sdc11

sudo mount /dev/sdc1 /home/vagrant/Examenes_UTN/Alumno_1/parcial_1
sudo mount /dev/sdc2 /home/vagrant/Examenes_UTN/Alumno_1/parcial_2
sudo mount /dev/sdc3 /home/vagrant/Examenes_UTN/Alumno_1/parcial_3
sudo mount /dev/sdc5 /home/vagrant/Examenes_UTN/Alumno_2/parcial_1
sudo mount /dev/sdc6 /home/vagrant/Examenes_UTN/Alumno_2/parcial_2
sudo mount /dev/sdc7 /home/vagrant/Examenes_UTN/Alumno_2/parcial_3
sudo mount /dev/sdc8 /home/vagrant/Examenes_UTN/Alumno_3/parcial_1
sudo mount /dev/sdc9 /home/vagrant/Examenes_UTN/Alumno_3/parcial_2
sudo mount /dev/sdc10 /home/vagrant/Examenes_UTN/Alumno_3/parcial_3
sudo mount /dev/sdc11 /home/vagrant/Examenes_UTN/profesores


