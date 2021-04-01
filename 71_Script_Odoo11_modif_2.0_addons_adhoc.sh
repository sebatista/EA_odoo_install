#
# Localizacion argentina ADHOC
#

# Crear directorios para Addons
if [ -d /opt/odoo/addons/ ] ;
then
	echo "Directorio /opt/odoo/addons/ existente"
else
	sudo mkdir /opt/odoo/addons
	echo "Directorio /opt/odoo/addons/ creado"
fi

#Crear directorios para ADHOC
if [ -d /opt/odoo/addons/ADHOC/ ] ;
then
	echo "Directorio /opt/odoo/addons/ADHOC/ existente"
else
	sudo mkdir /opt/odoo/addons/ADHOC
	echo "Directorio /opt/odoo/addons/ADHOC/ creado"
fi

cd /opt/odoo/addons/ADHOC



sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/ingadhoc/account-financial-tools.git account-financial-tools
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/ingadhoc/account-invoicing.git account-invoicing
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/ingadhoc/account-payment.git account-payment
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/ingadhoc/aeroo_reports.git aeroo_reports
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/ingadhoc/argentina-reporting.git argentina-reporting
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/ingadhoc/argentina-sale.git argentina-sale
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/ingadhoc/manufacture.git manufacture
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/ingadhoc/miscellaneous.git miscellaneous
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/ingadhoc/multi-store.git multi-store
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/ingadhoc/odoo-argentina.git odoo-argentina

sudo wget https://apps.odoo.com/loempia/download/partner_identification/11.0.1.0.0/4gXzqj52wzlBc64roBAw7v.zip -O partner_identification.zip
sudo unzip partner_identification.zip
sudo rm partner_identification.zip

sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/ingadhoc/product.git product
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/ingadhoc/purchase.git purchase
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/ingadhoc/reporting-engine.git reporting-engine
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/ingadhoc/sale.git sale
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/ingadhoc/stock.git stock
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/ingadhoc/website.git website


#sudo wget https://github.com/ingadhoc/account-financial-tools/archive/11.0.zip -O ingadhoc-account-financial-tools.zip
#sudo unzip ingadhoc-account-financial-tools.zip
#sudo rm ingadhoc-account-financial-tools.zip

#sudo wget https://github.com/ingadhoc/account-invoicing/archive/11.0.zip -O ingadhoc-account-invoicing.zip
#sudo unzip ingadhoc-account-invoicing.zip
#sudo rm ingadhoc-account-invoicing.zip

#sudo wget https://github.com/ingadhoc/account-payment/archive/11.0.zip -O ingadhoc-account-payment.zip
#sudo unzip ingadhoc-account-payment.zip
#sudo rm ingadhoc-account-payment.zip

#sudo wget https://github.com/ingadhoc/aeroo_reports/archive/11.0.zip -O ingadhoc-aeroo_reports.zip
#sudo unzip ingadhoc-aeroo_reports.zip
#sudo rm ingadhoc-aeroo_reports.zip

#sudo wget https://github.com/ingadhoc/argentina-reporting/archive/11.0.zip -O ingadhoc-argentina-reporting.zip
#sudo unzip ingadhoc-argentina-reporting.zip
#sudo rm ingadhoc-argentina-reporting.zip

#sudo wget https://github.com/ingadhoc/argentina-sale/archive/11.0.zip -O ingadhoc-argentina-sale.zip
#sudo unzip ingadhoc-argentina-sale.zip
#sudo rm ingadhoc-argentina-sale.zip


#sudo wget https://github.com/ingadhoc/miscellaneous/archive/11.0.zip -O ingadhoc-miscellaneous.zip
#sudo unzip ingadhoc-miscellaneous.zip
#sudo rm ingadhoc-miscellaneous.zip

#sudo wget https://github.com/ingadhoc/multi-store/archive/11.0.zip -O ingadhoc-multi-store.zip
#sudo unzip ingadhoc-multi-store.zip
#sudo rm ingadhoc-multi-store.zip

#sudo wget https://github.com/ingadhoc/odoo-argentina/archive/11.0.zip -O ingadhoc-odoo-argentina.zip
#sudo unzip ingadhoc-odoo-argentina.zip
#sudo rm ingadhoc-odoo-argentina.zip

#sudo wget https://github.com/ingadhoc/reporting-engine/archive/11.0.zip -O ingadhoc-reporting-engine.zip
#sudo unzip ingadhoc-reporting-engine.zip
#sudo rm ingadhoc-reporting-engine.zip

#sudo wget https://github.com/ingadhoc/sale/archive/11.0.zip -O ingadhoc-sale.zip
#sudo unzip ingadhoc-sale.zip
#sudo rm ingadhoc-sale.zip

#sudo wget https://github.com/ingadhoc/stock/archive/11.0.zip -O ingadhoc-stock.zip
#sudo unzip ingadhoc-stock.zip
#sudo rm ingadhoc-stock.zip


sudo chown -R odoo:odoo -R /opt/odoo/addons/ADHOC
sudo chmod -R 775 /opt/odoo/addons/ADHOC

sudo -H pip3 install pycryptodome
# original # 
sudo -H pip3 install -r account-financial-tools/requirements.txt
sudo -H pip3 install -r account-invoicing/requirements.txt
sudo -H pip3 install -r account-payment/requirements.txt
sudo -H pip3 install -r aeroo_reports/requirements.txt
sudo -H pip3 install -r argentina-reporting/requirements.txt
sudo -H pip3 install -r argentina-sale/requirements.txt
sudo -H pip3 install -r manufacture/requirements.txt
sudo -H pip3 install -r miscellaneous/requirements.txt
sudo -H pip3 install -r multi-store/requirements.txt
sudo -H pip3 install -r odoo-argentina/requirements.txt
sudo -H pip3 install -r partner_identification/requirements.txt
sudo -H pip3 install -r product/requirements.txt
sudo -H pip3 install -r purchase/requirements.txt

sudo -H pip3 install -r reporting-engine-11.0/requirements.txt	#GENERÓ ERRORES - REVISAR pycups 

sudo -H pip3 install -r stock/requirements.txt
sudo -H pip3 install -r sale/requirements.txt
sudo -H pip3 install -r website/requirements.txt


cd /opt/odoo/addons/ADHOC/account-financial-tools/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/ADHOC/account-invoicing/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/ADHOC/account-payment/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/ADHOC/aeroo_reports/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/ADHOC/argentina-reporting/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/ADHOC/argentina-sale/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/ADHOC/manufacture/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/ADHOC/miscellaneous/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/ADHOC/multi-store/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/ADHOC/odoo-argentina/
sudo git reset --hard HEAD
sudo git pull

#cd /opt/odoo/addons/ADHOC/partner_identification/
#sudo git reset --hard HEAD
#sudo git pull

cd /opt/odoo/addons/ADHOC/product/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/ADHOC/purchase/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/ADHOC/reporting-engine/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/ADHOC/sale/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/ADHOC/stock/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/ADHOC/website/
sudo git reset --hard HEAD
sudo git pull



sudo chown -R odoo:odoo -R /opt/odoo/addons/ADHOC
sudo chmod -R 775 /opt/odoo/addons/ADHOC
