$base="<OU aonde estao os grupos para listar>"
Get-ADGroup -Filter * -SearchBase $base  -Properties * | Select-Object Name,GroupCategory,GroupScope,cn,SamAccountName | Export-csv "<local para gravar o arquivo de exportacao>" -NoTypeInformation
