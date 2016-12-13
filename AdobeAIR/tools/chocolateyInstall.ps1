$package = 'AdobeAIR'
$version = '24.0'

$params = @{
    PackageName = $package;
    FileType = 'exe';
    SilentArgs = '-silent -eulaAccepted';
    Url = "http://airdownload.adobe.com/air/win/download/$version/AdobeAIRInstaller.exe"
    Checksum = '9A590EDE7401465D7B78FE1A850E55B077DA497B2274AEDA032CC82F42E91BE3'
    ChecksumType  = 'sha256'
}

Install-ChocolateyPackage @params