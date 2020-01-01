clear
$CDISGroups = Get-ADGroup -Filter {name -like "CDIS*"} -Properties Description | Select -expand name
$CompanyGroups = Get-ADGroup -Filter {name -like "COMPANY*"} -Properties Description | Select -expand name
ForEach ($ThisGroup in $CDISGroups)
{
$usernames = Get-ADGroupMember -identity $ThisGroup -Recursive| Get-ADUser -Properties enabled| select samaccountname, enabled
ForEach ($username in $usernames) {
Write-Host "update CDISUsers set ",$ThisGroup,"='X'where username ='",$username.samaccountname,"'" 
}
Write-Host ""
}
ForEach ($ThisGroup in $CompanyGroups)
{
$usernames = Get-ADGroupMember -identity $ThisGroup | select samaccountname
ForEach ($username in $usernames) {
Write-Host "update CDISUsers set ",$ThisGroup,"='X', company ='",$ThisGroup,"'  where username ='",$username.samaccountname,"'" 
}
Write-Host ""
}

