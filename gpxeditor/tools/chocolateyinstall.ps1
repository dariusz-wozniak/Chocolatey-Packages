$ErrorActionPreference = 'Stop';

$packageName = 'gpxeditor'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://datapacket.dl.sourceforge.net/project/gpxeditor/GPX%20Editor/Version%201.07.12/GPX%20Editor%201.7.12.zip'

$packageArgs = @{
    packageName   = $packageName
    unzipLocation = $toolsDir
    url           = $url
    softwareName  = 'gpxeditor*'
    checksum      = '409E84C417BA3A0B63E4762350205569C36A932043ED431287FFE83B4D16EB7E'
    checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs