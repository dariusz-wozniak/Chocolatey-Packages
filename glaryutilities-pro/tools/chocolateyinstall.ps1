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
  checksum      = 'DA406249A49BA5530469EB91819EDC96C15467AB0C86812E7FCCE517CBB3D0DE'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs