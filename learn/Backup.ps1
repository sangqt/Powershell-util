Param(
    [string]$Path = './app',
    [string]$DestinationPath = './',
    [string]$Level = 'Fastest'
)

$date = Get-Date -Format "yyyy-MM-dd"
$destpath = "$($DestinationPath + 'backup-' + $date)"
Compress-Archive -Path $Path -CompressionLevel $Level -DestinationPath $destpath
Write-Host "Created backup at $($destpath + '.zip')"