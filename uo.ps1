# 更新odoo16为本翻译

copy-item  .\source\odoo  d:\odoo16-x64\source\odoo -Force -Recurse
copy-item  .\source\addons  d:\odoo16-x64\source\odoo\addons -Force -Recurse

# 更新企业版

copy-item .\source_ent  d:\pjweb\o16.erpapp.cn\addons_ent -Force -Recurse
remove-item d:\pjweb\o16.erpapp.cn\addons_ent\.tx -Force -Recurse

cd ..
.\uo.ps1
cd odoo16-cn
