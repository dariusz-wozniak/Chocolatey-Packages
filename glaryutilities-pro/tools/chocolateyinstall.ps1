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
  checksum      = 'B1C703CDCB645D7E0A512C0C4711587223FC888835DC657457E5CE46A27F5F6A'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs