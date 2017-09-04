
$ErrorActionPreference = 'Stop';

$packageName= 'gpxeditor'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://netcologne.dl.sourceforge.net/project/gpxeditor/GPX%20Editor/Version%201.06.18/GPX_Editor_1_06_18.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'gpxeditor*'
  checksum      = '36FD058B0DBD36715AF519CA98A9A29CA2A634E37B7DB63185584D432B60B839'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
