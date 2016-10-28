
$ErrorActionPreference = 'Stop';

$packageName= 'gpxeditor'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://downloads.sourceforge.net/project/gpxeditor/GPX%20Editor/Version%201.06.16/GPX_Editor_1.6.16.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'gpxeditor*'
  checksum      = '7DE9D8C3FC90D141C2D9B50208627E298B953E004BE0C22C03982219CDEBF75D'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
