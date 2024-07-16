$Path="<OU para aonde irao os usuarios>"
Import-Csv “<caminho do arquivo de importacao dos usuarios>” -Delimiter ","| ForEach-Object {
New-ADUser -Name $_.Name -GivenName $_."GivenName" -Surname $_."Surname" -DisplayName $_."DisplayName" -Path $Path -SamAccountName $_."SamAccountName" -UserPrincipalName $_."UserPrincipalName" -title $_."title" -Company $_."Company" -AccountPassword (ConvertTo-SecureString Teste@123. -AsPlainText -Force) -ChangePasswordAtLogon $false -Enabled $true -EmailAddress $_."EmailAddress"
}

