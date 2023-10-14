$ErrorActionPreference = 'Stop';

$packageName = 'amazingmarvin'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://amazingmarvin.s3-website-us-east-1.amazonaws.com/MarvinSetup.exe'

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    fileType       = 'EXE'
    url            = $url
    softwareName   = 'amazingmarvin*'
    checksum       = '0F61C43DDED0F2C37BC39FCE5D9BB7CE04D3D4A48FA0B65D341FEAD1D80C5C91'
    checksumType   = 'sha256'
    silentArgs     = '/S'
    validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
