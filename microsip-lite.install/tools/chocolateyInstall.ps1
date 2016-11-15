$packageName = 'microsip-lite.install'
$installerType = 'EXE'
$url = '{{DownloadUrl}}'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
