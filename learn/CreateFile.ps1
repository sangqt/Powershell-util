Param (
    [Parameter(Mandatory, HelpMessage = "Please provide a valid path")]
    [string]$Path
)
New-Item $Path
Write-Host "File $Path was created"