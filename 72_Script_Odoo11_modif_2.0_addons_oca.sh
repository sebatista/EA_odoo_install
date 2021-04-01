#
# Localizacion argentina OCA
#

# Crear directorios para Addons
if [ -d /opt/odoo/addons/ ] ;
then
	echo "Directorio /opt/odoo/addons/ existente"
else
	sudo mkdir /opt/odoo/addons
	echo "Directorio /opt/odoo/addons/ creado"
fi

# Crear directorios para OCA
if [ -d /opt/odoo/addons/OCA/ ];
then
	echo "El directorio /opt/odoo/addons/OCA/ ya existe."
else
	sudo -H mkdir /opt/odoo/addons/OCA
	echo "Directorio /opt/odoo/addons/OCA/ creado."
fi

cd /opt/odoo/addons/OCA

#--depth 1 Es para que únicamente se clone la última versión y no ocupe tanto espacio.
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/account-analytic account-analytic
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/account-financial-reporting account-financial-reporting
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/account-financial-tools account-financial-tools
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/account-invoicing account-invoicing
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/account-payment account-payment
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/commission commission
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/contract contract
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/crm crm
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/e-commerce e-commerce
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/hr hr
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/hr-timesheet hr-timesheet
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/knowledge knowledge
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/manufacture manufacture
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/margin-analysis margin-analysis
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/operating-unit.git operating-unit
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/partner-contact partner-contact
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/product-attribute product-attribute
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/product-variant product-variant
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/purchase-workflow purchase-workflow
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/queue queue
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/reporting-engine reporting-engine
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/report-print-send report-print-send
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/sale-financial sale-financial
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/sale-reporting.git sale-reporting
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/sale-workflow sale-workflow
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/server-tools server-tools
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/server-ux server-ux
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/social social
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/stock-logistics-warehouse stock-logistics-warehouse
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/stock-logistics-workflow stock-logistics-workflow
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/web web
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/website website


sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/account-closing.git account-closing
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/account-invoice-reporting.git account-invoice-reporting
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/account-reconcile.git account-reconcile
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/bank-payment.git bank-payment
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/credit-control.git credit-control
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/currency.git currency
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/ddmrp.git ddmrp
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/donation.git donation
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/event.git event
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/field-service.git field-service
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/geospatial.git geospatial
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/manufacture-reporting.git manufacture-reporting
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/mis-builder.git mis-builder
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/multi-company.git multi-company
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/OpenUpgrade.git OpenUpgrade
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/pos.git pos
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/project.git project
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/project-reporting.git project-reporting
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/rma.git rma
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/server-auth.git server-auth
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/server-backend.git server-backend
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/stock-logistics-barcode.git stock-logistics-barcode
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/stock-logistics-reporting.git stock-logistics-reporting
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/survey.git survey
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/timesheet.git timesheet
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/vertical-association.git vertical-association
sudo -H git clone --depth 1 --branch 11.0 --single-branch https://github.com/OCA/vertical-hotel.git vertical-hotel


sudo chown -R odoo:odoo -R /opt/odoo/addons/OCA
sudo chmod -R 775 /opt/odoo/addons/OCA

sudo -H pip3 install -r account-analytic/requirements.txt
sudo -H pip3 install -r account-financial-reporting/requirements.txt
sudo -H pip3 install -r account-financial-tools/requirements.txt
sudo -H pip3 install -r account-invoicing/requirements.txt
sudo -H pip3 install -r account-payment/requirements.txt
sudo -H pip3 install -r commission/requirements.txt
sudo -H pip3 install -r contract/requirements.txt
sudo -H pip3 install -r crm/requirements.txt
sudo -H pip3 install -r e-commerce/requirements.txt
sudo -H pip3 install -r hr/requirements.txt
sudo -H pip3 install -r hr-timesheet/requirements.txt
sudo -H pip3 install -r knowledge/requirements.txt
sudo -H pip3 install -r manufacture/requirements.txt
sudo -H pip3 install -r margin-analysis/requirements.txt
sudo -H pip3 install -r operating-unit/requirements.txt
sudo -H pip3 install -r partner-contact/requirements.txt
sudo -H pip3 install -r product-attribute/requirements.txt
sudo -H pip3 install -r product-variant/requirements.txt
sudo -H pip3 install -r purchase-workflow/requirements.txt
sudo -H pip3 install -r queue/requirements.txt
sudo -H pip3 install -r reporting-engine/requirements.txt

sudo -H pip3 install -r report-print-send/requirements.txt #Tiró error, REVISAR

sudo -H pip3 install -r sale-financial/requirements.txt
sudo -H pip3 install -r sale-reporting/requirements.txt
sudo -H pip3 install -r sale-workflow/requirements.txt
sudo -H pip3 install -r server-tools/requirements.txt
sudo -H pip3 install -r server-ux/requirements.txt
sudo -H pip3 install -r social/requirements.txt
sudo -H pip3 install -r stock-logistics-warehouse/requirements.txt
sudo -H pip3 install -r stock-logistics-workflow/requirements.txt
sudo -H pip3 install -r web/requirements.txt
sudo -H pip3 install -r website/requirements.txt


#Actualización de las rutas utilizadas

cd /opt/odoo/addons/OCA/account-analytic/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/account-financial-reporting/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/account-financial-tools/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/account-invoicing/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/account-payment/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/commission/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/contract/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/crm/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/e-commerce/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/hr/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/hr-timesheet/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/knowledge/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/manufacture/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/margin-analysis/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/operating-unit/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/partner-contact/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/product-attribute/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/product-variant/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/purchase-workflow/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/queue/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/reporting-engine/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/report-print-send/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/sale-financial/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/sale-reporting/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/sale-workflow/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/server-tools/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/server-ux/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/social/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/stock-logistics-warehouse/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/stock-logistics-workflow/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/web/
sudo git reset --hard HEAD
sudo git pull

cd /opt/odoo/addons/OCA/website/
sudo git reset --hard HEAD
sudo git pull

sudo chown -R odoo:odoo -R /opt/odoo/addons/OCA
sudo chmod -R 775 /opt/odoo/addons/OCA
