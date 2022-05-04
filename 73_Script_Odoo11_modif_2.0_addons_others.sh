#
# Localizacion argentina Otros/Varios
#

# Crear directorios para Addons
if [ -d /opt/odoo/addons/ ] ;
then
	echo "Directorio /opt/odoo/addons/ existente"
else
	sudo mkdir /opt/odoo/addons
	echo "Directorio /opt/odoo/addons/ creado"
fi

# Crear directorios para OTROS
if [ -d /opt/odoo/addons/others/ ];
then
	echo "El directorio /opt/odoo/addons/others/ ya existe."
else
	sudo -H mkdir /opt/odoo/addons/others
	echo "Directorio /opt/odoo/addons/others/ creado."
fi

cd /opt/odoo/addons/others



sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/sebatista/EA_Jobiols.git jobiols-ea-remito
sudo -H pip3 install -r jobiols-ea-remito/requirements.txt

#sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/jobiols/odoo-addons jobiols-odoo-addons
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/sebatista/jobiols-odoo-addons jobiols-odoo-addons
sudo -H pip3 install -r jobiols-odoo-addons/l10n_ar_export_arba/requirements.txt
sudo -H pip3 install -r jobiols-odoo-addons/l10n_ar_export_sicore/requirements.txt

sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/jobiols/odoo-jeo-ce.git jobiols-odoo-jeo-ce
sudo -H pip3 install -r jobiols-odoo-jeo-ce/requirements.txt

sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/akretion/odoo-usability akretion-odoo-usability
sudo -H pip3 install -r akretion-odoo-usability/requirements.txt

sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/itpp-labs/access-addons itpp-labs-access-addons
sudo -H pip3 install -r itpp-labs-access-addons/requirements.txt

sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/itpp-labs/mail-addons.git itpp-labs-mail-addons
sudo -H pip3 install -r itpp-labs-mail-addons/requirements.txt

sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/itpp-labs/misc-addons.git itpp-labs-misc-addons
sudo -H pip3 install -r itpp-labs-misc-addons/requirements.txt

sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/itpp-labs/website-addons.git itpp-labs-website-addons
sudo -H pip3 install -r itpp-labs-website-addons/requirements.txt

sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/sebatista/EA_regaby.git regaby-ea-sale-report
sudo -H pip3 install -r regaby-ea-sale-report/requirements.txt

sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/regaby/odoo-addons regaby-odoo-addons
sudo -H pip3 install -r regaby-odoo-addons/requirements.txt

sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/sebatista/garazd_website garazd-website
sudo -H pip3 install -r garazd-website/requirements.txt

sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/siseservicios/EA_theme_laze temas
sudo -H pip3 install -r theme_laze/requirements.txt

cd /opt/odoo/addons/others/jobiols-ea-remito/
sudo git reset --hard HEAD
sudo git pull
sudo -H pip3 install -r requirements.txt

cd /opt/odoo/addons/others/jobiols-odoo-addons/
sudo git reset --hard HEAD
sudo git pull
sudo -H pip3 install -r requirements.txt

cd /opt/odoo/addons/others/jobiols-odoo-jeo-ce/
sudo git reset --hard HEAD
sudo git pull
sudo -H pip3 install -r requirements.txt

cd /opt/odoo/addons/others/others-akretion-odoo-usability/
sudo git reset --hard HEAD
sudo git pull
sudo -H pip3 install -r requirements.txt

cd /opt/odoo/addons/others/others-it-projects-llc-website-addons/
sudo git reset --hard HEAD
sudo git pull
sudo -H pip3 install -r requirements.txt

cd /opt/odoo/addons/others/regaby-ea-sale-report/
sudo git reset --hard HEAD
sudo git pull
sudo -H pip3 install -r requirements.txt

cd /opt/odoo/addons/others/regaby-odoo-addons/
sudo git reset --hard HEAD
sudo git pull
sudo -H pip3 install -r requirements.txt

cd /opt/odoo/addons/others/garazd-website/
sudo git reset --hard HEAD
sudo git pull
sudo -H pip3 install -r requirements.txt


sudo chown -R odoo:odoo -R /opt/odoo/addons/others
sudo chmod -R 775 /opt/odoo/addons/others


# Crear directorios para Addons
if [ -d /opt/odoo/addons/ ] ;
then
	echo "Directorio /opt/odoo/addons/ existente"
else
	sudo mkdir /opt/odoo/addons
	echo "Directorio /opt/odoo/addons/ creado"
fi

# # Crear directorios para Temas
# if [ -d /opt/odoo/addons/temas/ ];
# then
	# echo "El directorio /opt/odoo/addons/temas/ ya existe."
# else
	# sudo -H mkdir /opt/odoo/addons/temas
	# echo "Directorio /opt/odoo/addons/temas/ creado."
# fi

cd /opt/odoo/addons


sudo -H git clone --depth 1 --single-branch --branch 11.0_ea https://github.com/sebatista/EA_theme_laze.git temas
#CALVE de Github
sudo -H pip3 install -r theme_laze/requirements.txt


sudo chown -R odoo:odoo -R /opt/odoo/addons/temas
sudo chmod -R 775 /opt/odoo/addons/temas


cd /opt/odoo/addons/temas/theme_laze/
sudo git reset --hard HEAD
sudo git pull
sudo -H pip3 install -r requirements.txt

sudo chown -R odoo:odoo -R /opt/odoo/addons/temas
sudo chmod -R 775 /opt/odoo/addons/temas
