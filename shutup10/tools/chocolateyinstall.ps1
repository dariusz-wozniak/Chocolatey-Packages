$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = 'shutup10'
  url            = 'https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe'
  FileFullPath   = "OOSU10.exe"
  checksum       = 'A2F6CF37E12B97F39AC70F72DF2D887EC6690E7F37C87F12D03D6F89DC08CAA8'
  ChecksumType   = 'sha256'
}

Get-ChocolateyWebFile @packageArgs