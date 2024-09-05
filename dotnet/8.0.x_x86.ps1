
$d_ver = "8.0"
$d_arch = "x86"


$d_uri = "https://dotnet.microsoft.com/download/dotnet/" + $d_ver
$d_uri_arch = "thank-you/runtime-desktop-.*-windows-" + $d_arch + "-installer"

$resp = Invoke-WebRequest -URI $d_uri
$resp.Content -match $d_uri_arch
$dl_url = "https://dotnet.microsoft.com/download/dotnet/" + $Matches.0
Write-Output $dl_url

$resp = Invoke-WebRequest -URI $dl_url
$resp.Content -match "https://download.visualstudio.microsoft.com/.*exe"
$dl_url = $Matches.0
Write-Output $dl_url

$dl_url -match "windowsdesktop-runtime-.*"
$f_name = $Matches.0
Write-Output $f_name

Invoke-WebRequest -UseBasicParsing $dl_url -OutFile $f_name

Pause
