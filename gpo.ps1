# powershell 根据源码得到po文件, $sourcePath 要用相对路径
$sourcePath = "D:\odoo16-x64\source\odoo\addons"
$sourcePathEnt = "D:\PjWeb\o16.erpapp.cn\addons_ent"

# 获取所有 po，社区
$pofiles = Get-ChildItem $sourcePath -Filter "zh_CN.po" -Recurse

foreach($file in $pofiles)  {
$filename = $file.Name
$relativePath = Split-Path $file.Directory -Parent
$relativeLeaf = Split-Path $file.Directory -leaf
$newRelativePath = $relativePath -replace 'odoo16-x64', 'odoo16-po'
$newFullPath = $newRelativePath + '\' + $relativeLeaf
md -fo $newFullPath
Copy-Item $file.Fullname $newFullPath -Force -Recurse
}

# 获取所有 po，企业
$pofiles = Get-ChildItem $sourcePathEnt -Filter "zh_CN.po" -Recurse

foreach($file in $pofiles)  {
$filename = $file.Name
$relativePath = Split-Path $file.Directory -Parent
$relativeLeaf = Split-Path $file.Directory -leaf
$newRelativePath = $relativePath -replace 'PjWeb', 'odoo16e-po'
$newFullPath = $newRelativePath + '\' + $relativeLeaf
md -fo $newFullPath
Copy-Item $file.Fullname $newFullPath -Force -Recurse
}
