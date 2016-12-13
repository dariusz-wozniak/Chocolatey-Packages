$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName    = 'shutup10'
  url            = 'https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe'
  FileFullPath   = "OOSU10.exe"
  checksum       = '8BFBCADD6E89C2A4E2E2D52442391E22CBC8CA29D7083C91D8F6F86CC770CF41'
  ChecksumType   = 'sha256'
}

Get-ChocolateyWebFile @packageArgs