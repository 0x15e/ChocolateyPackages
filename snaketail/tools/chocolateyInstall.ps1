#Changes per version
$uninstallKey = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{60F454D1-1981-4721-B29E-5CF45A6CECCA}'

$packageName = 'snaketail'
$installerType = 'msi'
$url = 'https://snaketail-net.googlecode.com/files/SnakeTail.v1.8.2.x86.msi'
$url64 = 'https://snaketail-net.googlecode.com/files/SnakeTail.v1.8.2.x64.msi'
$silentArgs = '/quiet'
$validExitCodes = @(0)


if (Test-Path $uninstallKey) {
  Write-ChocolateyFailure 'SnakeTail is already installed!'
}
else {
  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
}