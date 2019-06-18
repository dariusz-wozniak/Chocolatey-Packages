$ErrorActionPreference = 'Stop';

$packageName = 'glaryutilities-pro'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://download.glarysoft.com/gup5setup.exe'

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $toolsDir
    fileType       = 'EXE'
    url            = $url
    validExitCodes = @(0, 3010, 1641)
    silentArgs     = '/S  /NORESTART '
    softwareName   = 'Glary Utilities'
    checksum       = 'CABF4A6AAF70EC1E22BC302E2175A1A23CEFE6A4BE766CB745A1AA07744D5CE5'
    checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs