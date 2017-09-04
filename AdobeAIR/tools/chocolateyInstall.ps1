$package = 'AdobeAIR'
$version = '26.0'

$params = @{
    PackageName = $package;
    FileType = 'exe';
    SilentArgs = '-silent -eulaAccepted';
    Url = "http://airdownload.adobe.com/air/win/download/$version/AdobeAIRInstaller.exe"
    Checksum = 'FE43A758B62A68D78E99770E91381A497F807BCB48799065718746BD1A48847F'
    ChecksumType  = 'sha256'
}

Install-ChocolateyPackage @params