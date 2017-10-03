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
  silentArgs    = '/S  /NORESTART '
  softwareName  = 'Glary Utilities'
  checksum      = 'F0569AEBC77FDBDAEB7DE414EAF4448834BB6CED0BA0EFE38465C0ACCCB138A1'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs