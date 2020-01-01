clear
Write-Host "delete CDISUsers" 
#CDIS_PERMISSION_PROJECT
$users = Get-ADGroupMember -identity CDIS_ALL -Recursive| Get-ADUser -Properties Mail, enabled, whenCreated, title,distinguishedName | select name, samaccountname, mail, enabled, whenCreated, title ,distinguishedName
ForEach ($user in $users){
Write-Host "insert into CDISUsers (Name,UserName,Email,enabled,created,title,dn) values('",$user.name,"','",$user.samaccountname,"','",$user.mail,"','",$user.enabled,"','",$user.whenCreated,"','",$user.title,"','",$user.distinguishedName,"')"
}