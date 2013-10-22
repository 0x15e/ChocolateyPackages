$msiId = '{60F454D1-1981-4721-B29E-5CF45A6CECCA}'
Uninstall-ChocolateyPackage 'snaketail' 'msi' "$msiId /qb" -validExitCodes @(0)