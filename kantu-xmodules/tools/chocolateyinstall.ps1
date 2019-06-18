$ErrorActionPreference = 'Stop';

$packageName = 'kantu-xmodules'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://download.ui.vision/x/ui.vision-xmodules-setup-v201905.exe'

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    fileType       = 'EXE'
    url            = $url
    softwareName   = 'kantu-xmodules*'
    checksum       = '52BDDAF246732E6BE00F78699385EFB31042ED3731784EC1BE3394E5B961EF4D'
    checksumType   = 'sha256'
    silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs