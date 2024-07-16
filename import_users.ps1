$Path="OU=Exchange,OU=BBRJ,DC=bbrj,DC=com,DC=br"
Import-Csv “C:\BBRJ\exchange_tijuca.csv” -Delimiter ","| ForEach-Object {
New-ADUser -Name $_.Name -GivenName $_."GivenName" -Surname $_."Surname" -DisplayName $_."DisplayName" -Path $Path -SamAccountName $_."SamAccountName" -UserPrincipalName $_."UserPrincipalName" -title $_."title" -Company $_."Company" -AccountPassword (ConvertTo-SecureString Teste@123. -AsPlainText -Force) -ChangePasswordAtLogon $false -Enabled $true -EmailAddress $_."EmailAddress"
}

