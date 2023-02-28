# 从 tx取最新翻译
cd source
$Env:PATH = "D:\odoo10-x64\runtime\python;D:\odoo10-x64\runtime\python\Scripts;$Env:PATH"
Write-Output $Env:PATH

tx pull -l zh_CN