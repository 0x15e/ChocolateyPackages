﻿$packageName = 'microsip.portable'
$url = '{{DownloadUrl}}'

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"