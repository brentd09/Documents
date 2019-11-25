[cmdletbinding()]
Param (
  [Parameter(Mandatory=$true)]
  [string]$DataToBeHashed
)
new-object System.Security.Cryptography.SHA256Managed | 
ForEach-Object {
  $_.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($DataToBeHashed))
} | ForEach-Object {$_.ToString("x2")} | Write-Host -NoNewline