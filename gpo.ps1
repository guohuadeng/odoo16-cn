# powershell, $sourcePath 要用相对路径
$sourcePath = "D:\odoo16-x64\source\odoo\addons"
#$sourcePathEnt = "D:\PjWeb\o16.erpapp.cn\addons_ent"


# Get all the PO files
$pofiles = Get-ChildItem $sourcePathEnt -Filter "zh_CN.po" -Recurse
$file = $pofiles[0]

# Loop through each one, and copy to the destination path
foreach($file in $pofiles)  {
# Get the file name
$filename = $file.Name
# Get the relative folder structure
$relativePath = Split-Path $file.Directory -Parent
$relativeLeaf = Split-Path $file.Directory -leaf
# Create the new relative folder structure
$newRelativePath = $relativePath -replace 'odoo16-x64', 'odoo16-po'
#$newRelativePath = $relativePath -replace 'PjWeb', 'odoo16e-po'
$newFullPath = $newRelativePath + '\' + $relativeLeaf
$file.Fullname
Write-Output $newFullPath
# Copy-Item $relativeFile $newFullPath
md -fo $newFullPath
Copy-Item $file.Fullname $newFullPath -Force -Recurse
}