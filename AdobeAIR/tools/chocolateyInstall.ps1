$package = 'AdobeAIR'
$version = '28.0'

$params = @{
    PackageName = $package;
    FileType = 'exe';
    SilentArgs = '-silent -eulaAccepted';
    Url = "http://airdownload.adobe.com/air/win/download/$version/AdobeAIRInstaller.exe"
    Checksum = '9076489E273652089A4A53A1D38C6631E8B7477E39426A843E0273F25BFB109F'
    ChecksumType  = 'sha256'
}

Install-ChocolateyPackage @params