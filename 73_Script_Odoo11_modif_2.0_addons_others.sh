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


# 2020-01-01 - Jobiols -> solo utilizarémos ARBA y SICORE.
# 2020-01-01 - Regaby -> solo utilizaremos ???
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/it-projects-llc/website-addons others-it-projects-llc-website-addons
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/akretion/odoo-usability others-akretion-odoo-usability
#sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/jobiols/odoo-addons jobiols-odoo-addons
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/sebatista/jobiols-odoo-addons jobiols-odoo-addons
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/jobiols/odoo-jeo-ce.git jobiols-odoo-jeo-ce
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/sebatista/EA_Jobiols.git jobiols-ea-remito

sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/regaby/odoo-addons regaby-odoo-addons
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/sebatista/EA_regaby.git regaby-ea-sale-report

sudo -H pip3 install -r others-it-projects-llc-website-addons/requirements.txt
#sudo -H pip3 install -r others-akretion-odoo-usability/requirements.txt
#sudo -H pip3 install -r jobiols-odoo-addons/l10n_ar_export_arba/requirements.txt
#sudo -H pip3 install -r jobiols-odoo-addons/l10n_ar_export_sicore/requirements.txt
#sudo -H pip3 install -r regaby-odoo-addons/requirements.txt
sudo -H pip3 install -r jobiols-ea-remito/requirements.txt
sudo -H pip3 install -r regaby-ea-sale-report/requirements.txt
sudo -H pip3 install -r jobiols-odoo-jeo-ce/requirements.txt


sudo chown -R odoo:odoo -R /opt/odoo/addons/others
sudo chmod -R 775 /opt/odoo/addons/others

