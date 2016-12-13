$ErrorActionPreference = 'Stop';

$packageName= 'glaryutilities-pro'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.glarysoft.com/gup5setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/S  /NORESTART '
  softwareName  = 'Glary Utilities'
  checksum      = 'CA0A92A7A018DA2ADAFF39BA196B0A058D2323618B2DB96F2B160EA8F6BB46DD'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs