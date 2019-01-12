$ErrorActionPreference = 'Stop'

$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url       = 'http://www.ant.com/video-downloader/native/windows/latest/avd/AVD-NativeApp-4.1.19-Release.msi'

$packageArgs = @{
  packageName    =  $env:ChocolateyPackageName
  fileType       = 'MSI'
  softwareName   = 'avd-nativeapp'
  url            = $url
  silentArgs     = '/quiet'
  checksum       = '1E5166576ACE3DFA3D0B3C3AA3DE508408A3A8E7635F019330EB976B4BCADF91'
  checksumType   = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs

Remove-Item -Force -ea 0 "$toolsPath\*.msi","$toolsPath\*.ignore"