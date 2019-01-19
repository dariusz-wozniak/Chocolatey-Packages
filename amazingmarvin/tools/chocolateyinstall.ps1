$ErrorActionPreference = 'Stop';

$packageName= 'amazingmarvin'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://amazingmarvin.s3-website-us-east-1.amazonaws.com/MarvinSetup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'amazingmarvin*'
  checksum      = '726F324A5497361332E31E17933FD39A5E3FB0E0AD3D501AE7D91CBD6E1C27A7'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs