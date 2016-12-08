$packageName = 'snaketail.install'
$url = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'
$silentArgs = '/quiet'
$validExitCodes = @(0)

$packageArgs = @{
	packageName    = $packageName
	fileType       = 'msi'
	url            = $url
	url64          = $url64
	silentArgs     = $silentArgs
	validExitCodes = $validExitCodes
	checksum       = '{{Checksum}}'
	checksumType   = 'sha256'
	checksum64     = '{{Checksumx64}}'
	checksumType64 = 'sha256'
	softwareName   = 'SnakeTail*'
}


Install-ChocolateyPackage @packageArgs