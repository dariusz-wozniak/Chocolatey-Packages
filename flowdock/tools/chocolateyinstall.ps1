
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
  checksum      = '89B40755814126C446D1BA5CB0212A5C8C4D06BF24533304B1FDE92CD01EA5CE'
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs