$packageName = 'driverbooster'
$installerType = 'EXE'
$url = 'http://update.iobit.com/dl/driver_booster_setup.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$checksum = 'CE202879EC2ED3E8EFBB395667207A0D7A4C4E55D785623E592FC2BACA3AC8FD'
$checksumType = 'sha256'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {
	Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes -checksum $checksum -checksumType $checksumType
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}