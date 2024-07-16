$Path="OU=Grupos,OU=BBRJ,DC=bbrj,DC=com,DC=br"
Import-Csv “C:\BBRJ\groups_tijuca.csv” -Delimiter ","| ForEach-Object {
New-ADGroup -Name $_.Name -GroupCategory $_."GroupCategory" -GroupScope $_."GroupScope" -SamAccountName $_."samaccountname" -Path $Path
}