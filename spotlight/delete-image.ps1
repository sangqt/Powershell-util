Get-ChildItem $ImagePath -Filter *.jpg | 
Foreach-Object {
    $Path = (Resolve-Path $_.FullName).Path

    $OldImage = New-Object -TypeName System.Drawing.Bitmap -ArgumentList $Path
    $OldHeight = $OldImage.Height
    $OldWidth = $OldImage.Width
    
    
    If ($OldHeight -gt $OldWidth){
        echo "$OldHeight, $OldWidth"
        $OldImage.Dispose()
        Remove-Item $_.FullName
    }

    $OldImage.Dispose()
}
