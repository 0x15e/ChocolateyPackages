$packageName = 'snaketail.portable'
$zipFileName = $packageName + 'Install.zip'

try {
    #UnInstall-ChocolateyZipPackage $packageName $zipFileName

    $batPath = Join-Path $env:ChocolateyInstall "bin\SnakeTail.bat"
    if (Test-Path $batPath) {
        Write-Host "Removing $batPath"
        Remove-Item $batPath -Force
    }

    Write-ChocolateySuccess $packageName
} catch {
    Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
}