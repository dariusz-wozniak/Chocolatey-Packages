$package = 'AdobeAIR'

$params = @{
    PackageName  = $package;
    FileType     = 'exe';
    SilentArgs   = '-silent -eulaAccepted';
    Url          = "https://airsdk.harman.com/assets/downloads/AdobeAIR.exe"
    Checksum     = '709268F3B91DAEA6A168141E73B37BEE6CBD6988269804F5E2050EE4F5D00832'
    ChecksumType = 'sha256'
}

Install-ChocolateyPackage @params