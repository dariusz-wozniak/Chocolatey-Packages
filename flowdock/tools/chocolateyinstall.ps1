
$ErrorActionPreference = 'Stop';

$packageName = 'flowdock'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://flowdock-resources.s3.amazonaws.com/windows/Install%20Flowdock.exe'

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    fileType       = 'EXE'
    url            = $url
    softwareName   = 'flowdock*'
    checksum       = 'E1CCCF87E689DD20431587D365CF671DA8D0A2C5F62417D62A3EEE7A7B2912F9'
    checksumType   = 'sha256'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs