# Checking administrator permissions
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('QWRtaW5pc3RyYXRvcg=='))))) {
    Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('WW91IGhhdmUgdG8gcnVuIGFzIGFkbWluaXN0cmF0b3I='))) -ForegroundColor Red
    Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('UmVjaHRza2xpY2sgLT4gUnVuIGFzIGFkbWluaXN0cmF0b3I=')))
    pause
    exit
}

$banner = @'
 █████╗ ████████╗██╗  ██╗███████╗██╗  ██╗
██╔══██╗╚══██╔══╝██║  ██║██╔════╝╚██╗██╔╝
███████║   ██║   ███████║█████╗   ╚███╔╝ 
██╔══██║   ██║   ██╔══██║██╔══╝   ██╔██╗ 
██║  ██║   ██║   ██║  ██║███████╗██╔╝ ██╗
╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
'@

# Simulierter Farbverlauf (blau → lila)
$colors = @(([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('Qmx1ZQ=='))), ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('Q3lhbg=='))), ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('TWFnZW50YQ=='))), ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('RGFya01hZ2VudGE='))))

$lines = $banner -split ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG4=')))
for ($i = 0; $i -lt $lines.Length; $i++) {
    $color = $colors[ [Math]::Min([int]($i / 2), $colors.Count - 1) ]
    Write-Host $lines[$i] -ForegroundColor $color
}

Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('ICAgICAgICAgICAgICAgICDimqEgQSBUIEggRSBYIOKaoQ=='))) -ForegroundColor Magenta
Start-Sleep -Milliseconds 3000

# Configuration
$outputFile = (([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('ZXZlbnRzXw=='))) + $(Get-Date -Format 'yyyyMMdd_HHmm') + ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('LmNzdg=='))))
$daysBack = 3
$startTime = (Get-Date).AddDays(-$daysBack)

# Event export function
function Get-FastEvents {
    param (
        [string]$logName,
        [int[]]$eventIDs
    )
    
    $filter = @{
        LogName = $logName
        ID = $eventIDs
        StartTime = $startTime
    }
    
    try {
        $events = Get-WinEvent -FilterHashtable $filter -ErrorAction Stop -MaxEvents 1000
        $count = $events.Count
        Write-Host (([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('ezB9OiB7MX0gZXZlbnRz'))) -f $logName, $count) -ForegroundColor Green
        
        foreach ($event in $events) {
            [PSCustomObject]@{
                Data = $event.TimeCreated.ToString(([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('eXl5eS1NTS1kZA=='))))
                Godzina = $event.TimeCreated.ToString(([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('SEg6bW06c3M='))))
                Zrodlo = $event.ProviderName
                ID = $event.Id
                Opis = ($event.Message -replace ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YHJgbg=='))), ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('IA=='))) -replace ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('LA=='))), ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('Ow=='))))
            }
        }
    }
    catch {
        Write-Host (([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('ezB9OiBOTyBBQ0NFU1M='))) -f $logName) -ForegroundColor Red
    }
}

# Main part
Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG5TVEFSVElORyBUSEUgRVZFTlQgRVhQT1JULi4u'))) -ForegroundColor Cyan

$timer = [System.Diagnostics.Stopwatch]::StartNew()

# Event collection
$results = @()
$results += Get-FastEvents -logName ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('U2VjdXJpdHk='))) -eventIDs @(4616,1102,1100,4634)
$results += Get-FastEvents -logName ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('QXBwbGljYXRpb24='))) -eventIDs @(1000,3079)
$results += Get-FastEvents -logName ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('U3lzdGVt'))) -eventIDs @(7034,104)

# Zapisz wyniki do pliku CSV
$results | Export-Csv -Path $outputFile -Encoding UTF8 -NoTypeInformation -Delimiter ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('LA==')))

$timer.Stop()
Write-Host (([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG5DT01QTEVURUQgSU4g'))) + $($timer.Elapsed.TotalSeconds.ToString('0.00') + ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('KSBz')))) -ForegroundColor Cyan
Write-Host (([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('T3V0cHV0IGZpbGU6IA=='))) + $((Get-Item $outputFile) + ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('LkZ1bGxOYW1lKQ==')))) -ForegroundColor Yellow
Write-Host ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('YG5QcmVzcyBhbnkga2V5IHRvIGV4aXQuLi4=')))
[Console]::ReadKey($true) | Out-Null
