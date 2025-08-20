#Editado por Daniel Diaz Viruega el 19/08/2025
$usuarios= Get-LocalUser
$sinLogon=@()
$conLogon=@()
foreach ($u in $usuarios){
    if (-not $u.LastLogon){
        $sinLogon += "$($u.Name) : Estado = $($u.Enabled), Ultimo acceso = NUNCA"
    } else {
        $conLogon += "$($u.Name) : Estado = $($u.Enabled), Ultimo acceso = $($u.LastLogon)"
    }

}
#Guardar en archivos separados
$sinLogon | Out-File -FilePath "$env:C:\Users\ddiaz\OneDrive\Desktop\usuarios_sin_logon.txt"
$conLogon | Out-File -FilePath "$env:C:\Users\ddiaz\OneDrive\Desktop\usuarios_con_logon.txt"
#Mostrar en pantalla
Write-Output "`n Usuarios que NUNCA han iniciado sesión:"
$sinLogon | ForEach-Object {Write-Output $_}
Write-Output "`n Usuarios que SI han iniciado sesión:"
$conLogon | ForEach-Object {Write-Output $_}