$package = 'AdobeAIR'
$version = '27.0'

$params = @{
    PackageName = $package;
    FileType = 'exe';
    SilentArgs = '-silent -eulaAccepted';
    Url = "http://airdownload.adobe.com/air/win/download/$version/AdobeAIRInstaller.exe"
    Checksum = '6A5D7AB4BBD22633577E541FA32E0248E238AD83464BFBAD677260328A1F9781'
    ChecksumType  = 'sha256'
}

Install-ChocolateyPackage @params