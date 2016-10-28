$ErrorActionPreference = 'Stop';

$packageName= 'glaryutilities-free'
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
  checksum      = '1BFBA2B6677D70F48E0661B0367D428D2CEE64C00F22BC9FA31998599F25EF27'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs