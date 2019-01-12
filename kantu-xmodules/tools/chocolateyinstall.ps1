$ErrorActionPreference = 'Stop';

$packageName= 'kantu-xmodules'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.a9t9.com/kantu/kantu-xmodules-setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'kantu-xmodules*'
  checksum      = 'BAE47666E7F63F61CFAFCA3E409E0A0608965427FEB87A4FB19DF1118F68A531'
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs