<#
Where-Object : result filter 
Sort-Object : result order 
Select-Object: get result after order
#>
Get-Process | Where-Object CPU -gt 2 | Sort-Object CPU -Descending | Select-Object -First 3
