$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = 'shutup10'
  url            = 'https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe'
  FileFullPath   = "OOSU10.exe"
  checksum       = '33E4560798D9CE8670A4A1082D19A78781CF4A597723A085E76594A6A8EC3440'
  ChecksumType   = 'sha256'
}

Get-ChocolateyWebFile @packageArgs