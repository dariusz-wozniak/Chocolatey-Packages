$package = 'AdobeAIR'
$version = '32.0'

$params = @{
    PackageName = $package;
    FileType = 'exe';
    SilentArgs = '-silent -eulaAccepted';
    Url = "http://airdownload.adobe.com/air/win/download/$version/AdobeAIRInstaller.exe"
    Checksum = '24532D41EF2588C0DAAC4B6F8B7F863EE3C1A1B1E90B2D8D8B3EB4FAA657E5E3'
    ChecksumType  = 'sha256'
}

Install-ChocolateyPackage @params