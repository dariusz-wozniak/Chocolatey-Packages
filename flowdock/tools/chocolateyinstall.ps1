
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
  checksum      = 'BAB217F64B291A74705A5071B5698219D38F5AD802ADEC3CDCF153BB9C92ECD2'
  checksumType  = 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs