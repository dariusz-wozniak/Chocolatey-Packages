
$ErrorActionPreference = 'Stop';

$packageName= 'flowdock'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://flowdock-resources.s3.amazonaws.com/windows/Install%20Flowdock.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'flowdock*'
  checksum      = '79C50C6D1BFDC08A0B5BAFAA65BAE73CEAF022542DF44EDC4F8F1420434529E7'
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs