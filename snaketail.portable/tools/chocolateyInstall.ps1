$packageName = 'snaketail.portable'
$url = 'https://snaketail-net.googlecode.com/files/SnakeTail_v1.8.2.zip'
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage $packageName $url $unzipLocation