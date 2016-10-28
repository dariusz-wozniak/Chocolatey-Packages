$package = 'AdobeAIR'
$version = '23.0'

$params = @{
    PackageName = $package;
    FileType = 'exe';
    SilentArgs = '-silent -eulaAccepted';
    Url = "http://airdownload.adobe.com/air/win/download/$version/AdobeAIRInstaller.exe"
    Checksum = '5867BC3721754148A6DF3E9ECB2D497E1AA4EE00AE1874C93C33700C88362697'
    ChecksumType  = 'sha256'
}

Install-ChocolateyPackage @params