$packageName = 'snaketail.portable'
$url = '{{DownloadUrl}}'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
	packageName   = $packageName
	unzipLocation = $toolsDir
	checksum      = '{{Checksum}}'
	checksumType  = 'sha256'
	url           = $url	
}

Install-ChocolateyZipPackage @packageArgs