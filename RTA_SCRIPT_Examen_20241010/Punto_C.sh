#!/bin/bash


sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

sudo useradd -m -s /bin/bash -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s /bin/bash -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" -G p1c2_2024_gProfesores p1c2_2024_P1


cd /home/vagrant/Examenes_UTN/
sudo chown p1c2_2024_A1:p1c2_2024_A1 Alumno_1/
sudo chown p1c2_2024_A2:p1c2_2024_A2 Alumno_2/
sudo chown p1c2_2024_A1:p1c2_2024_A1 Alumno_3/
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores profesores/

sudo chmod 750 Alumno_1
sudo chmod 760 Alumno_2
sudo chmod 700 Alumno_3
sudo chmod 775 profesores

su -c 'whoami > /Examenes-UTN/Alumno_1/validar.txt' p1c2_2024_A1
su -c 'whoami > /Examenes-UTN/Alumno_2/validar.txt' p1c2_2024_A2
su -c 'whoami > /Examenes-UTN/Alumno_3/validar.txt' p1c2_2024_A3
su -c 'whoami > /Examenes-UTN/profesores/validar.txt' p1c2_2024_profesores


