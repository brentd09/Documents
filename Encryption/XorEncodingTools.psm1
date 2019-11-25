function ConvertTo-XOR {
  Param (
    [Parameter(Mandatory=$true)]
    [string]$PlainText,
    [Parameter(Mandatory=$true)]
    [string]$Key
  )
  $CypherText = ""
  $KeyPosition = 0
  $KeyArray = $Key.ToCharArray()
  $PlainText.ToCharArray() | foreach-object -process {
    $CypherText += [char]([byte][char]$_ -bxor $KeyArray[$keyposition])
    $KeyPosition += 1
    if ($KeyPosition -eq $key.Length) {$KeyPosition = 0}
  }
  return $CypherText
}