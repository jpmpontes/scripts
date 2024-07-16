$base="<OU aonde estao as contas para exportacao>"
Get-ADUser -Filter * -SearchBase $base -Properties * | Select-Object CN,Company,DisplayName,EmailAddress,GivenName,info,Name,SamAccountName,Surname,title,UserPrincipalName | Export-csv "<caminho aonde sera gravado o arquivo>" -NoTypeInformation
