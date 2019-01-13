$ErrorActionPreference = 'Stop';

$packageName= 'amazingmarvin'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/amazingmarvin/Marvin+Setup+1.36.1.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'amazingmarvin*'
  checksum      = '524C13903FAD3C8B9428B6580D4CE31DEE3613C0B5C278E59D5F0201DC11C9FB'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs