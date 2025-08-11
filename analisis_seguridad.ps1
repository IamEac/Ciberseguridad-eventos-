# Script para analizar eventos de seguridad en Windows
Write-Output "Informe de Eventos de Seguridad - Generado el $(Get-Date)"
Write-Output "-----------------------------------------------"
$eventos = Get-EventLog -LogName Security -Newest 10
$eventos | Select-Object TimeGenerated, EventID, Message | Format-Table -AutoSize
$eventos | Select-Object TimeGenerated, EventID, Message | Export-Csv -Path "InformeSeguridad.csv" -NoTypeInformation
Write-Output "Informe guardado en CiberseguridadLab\InformeSeguridad.csv"