#!/bin/bash

cd /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Adrian/RTA_ARCHIVOS_Examen_20241010

cat /proc/meminfo | grep MemTotal > /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Adrian/RTA_ARCHIVOS_Examen_20241010/Filtro_Basico.txt

sudo dmidecode -t chassis >> /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Adrian/RTA_ARCHIVOS_Examen_20241010/Filtro_Basico.txt

cat /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Adrian/RTA_ARCHIVOS_Examen_20241010/Filtro_Basico.txt

