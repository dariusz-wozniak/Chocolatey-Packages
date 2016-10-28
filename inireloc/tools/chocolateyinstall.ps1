$ErrorActionPreference = 'Stop';

$packageName= 'inireloc'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://ghisler.fileburst.com/addons/inireloc.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = '46C94CEA13E81944F02E2B1048F230C6819D2463AA624AA97DF259C827912D3E'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs