$package = 'AdobeAIR'
$version = '32.0'

$params = @{
    PackageName  = $package;
    FileType     = 'exe';
    SilentArgs   = '-silent -eulaAccepted';
    Url          = "http://airdownload.adobe.com/air/win/download/$version/AdobeAIRInstaller.exe"
    Checksum     = '6718308E10A45176155D0ECC8458BD3606308925B91F26A7D08C148CF52C9DB3'
    ChecksumType = 'sha256'
}

Install-ChocolateyPackage @params