$packageName = 'snaketail.portable'
$zipFileName = $packageName + 'Install.zip'

UnInstall-ChocolateyZipPackage $packageName $zipFileName

$batPath = Join-Path $env:ChocolateyInstall "bin\SnakeTail.bat"
if (Test-Path $batPath) {
	Write-Host "Removing $batPath"
	Remove-Item $batPath -Force
}

