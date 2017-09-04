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
  checksum      = 'F5CED8E0BFE0BB7CDC2570C78B573309965EC95D3784C4CE9FAE8993D6F21FBA'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs