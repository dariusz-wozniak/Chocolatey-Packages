$ErrorActionPreference = 'Stop';

$packageName= 'gpxeditor'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://netcologne.dl.sourceforge.net/project/gpxeditor/GPX%20Editor/Version%201.06.21/GPX_Editor-1-6-21.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'gpxeditor*'
  checksum      = '8B0E9E86B37B2EA0C06BE9EA18594E870F3F2D3DB18B15B4A109C6727B62A54E'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs