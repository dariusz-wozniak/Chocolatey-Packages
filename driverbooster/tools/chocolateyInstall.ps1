$packageName = 'driverbooster'
$installerType = 'EXE'
$url = 'http://update.iobit.com/dl/driver_booster_setup.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$checksum = '343AB123A926903E225FC4BA45CEC50EECAD6F978BD522D8891200B64CEBFB4D'
$checksumType = 'sha256'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {
	Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes -checksum $checksum -checksumType $checksumType
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}