$assets = @(
    "https://ghapex.lovable.app/assets/gallery-rider-package-Bl1Pxkdt.jpg",
    "https://ghapex.lovable.app/assets/gallery-truck-road-llMhJ4kO.jpg",
    "https://ghapex.lovable.app/assets/gallery-hub-team-Dp7pP6I6.jpg"
)

$dest = Join-Path $PSScriptRoot 'assets'
if(-not (Test-Path $dest)) { New-Item -ItemType Directory -Path $dest | Out-Null }

foreach($url in $assets){
    $file = Split-Path $url -Leaf
    $out = Join-Path $dest $file
    Write-Host "Downloading $url -> $out"
    try{
        Invoke-WebRequest -Uri $url -OutFile $out -UseBasicParsing -ErrorAction Stop
    }catch{
        Write-Warning "Failed to download $url : $_"
    }
}

Write-Host "Done. Assets placed in $dest"