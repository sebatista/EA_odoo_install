#CORTAR EL SCRIPT PONERLO EN OTRO LADO
sudo su - odoo -s /bin/bash
git clone --depth 1 --branch 11.0 --single-branch https://github.com/odoo/odoo odoo-server/
sudo pip3 install -r odoo-server/requirements.txt
sudo pip3 install -r odoo-server/doc/requirements.txt
exit


#Actualización de Repositorio de Odoo.
sudo su - odoo -s /bin/bash
cd /opt/odoo/odoo-server/
sudo git pull
exit

#Lo anterior se intenta reemplazar por:
#sudo su - odoo -s /bin/bash -c "git clone --depth 1 --branch 11.0 --single-branch https://github.com/odoo/odoo odoo-server/"
#sudo su - odoo -s /bin/bash -c "pip3 install -r odoo-server/requirements.txt"
#sudo su - odoo -s /bin/bash -c "pip3 install -r odoo-server/doc/requirements.txt"

#REVISAR 2 Paquetes tiran error de permisos
# Creo que muchos otros
# sphinxcontrib_jsmatch-1.0.1-py3.7-nspkg


#ACTUALIZACIÓN DE BASE DE DATOS Y MÓDULOS
# sudo su - odoo -s /bin/bash
# cd /opt/odoo/odoo-server/
# ./odoo-bin -c /etc/odoo-server.conf --update all
