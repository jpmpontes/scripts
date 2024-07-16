$Path="<OU para aonde vai os grupos>"
Import-Csv “<caminho aonda está o arquivo com as informacoes para importacao>” -Delimiter ","| ForEach-Object {
New-ADGroup -Name $_.Name -GroupCategory $_."GroupCategory" -GroupScope $_."GroupScope" -SamAccountName $_."samaccountname" -Path $Path
}
