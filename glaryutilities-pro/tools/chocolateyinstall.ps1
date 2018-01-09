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
  checksum      = 'B0368EED1CD51DF5114B7954186084FC6A27FB44B92D590B2FC589F3D4E3EADF'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs