# Checking administrator permissions
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "You have to run as administrator" -ForegroundColor Red
    Write-Host "Rechtsklick -> Run as administrator"
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
$colors = @("Blue", "Cyan", "Magenta", "DarkMagenta")

$lines = $banner -split "`n"
for ($i = 0; $i -lt $lines.Length; $i++) {
    $color = $colors[ [Math]::Min([int]($i / 2), $colors.Count - 1) ]
    Write-Host $lines[$i] -ForegroundColor $color
}

Write-Host "                 ⚡ A T H E X ⚡" -ForegroundColor Magenta
Start-Sleep -Milliseconds 3000

# Configuration
$outputFile = "events_$(Get-Date -Format 'yyyyMMdd_HHmm').csv"
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
        Write-Host ("{0}: {1} events" -f $logName, $count) -ForegroundColor Green
        
        foreach ($event in $events) {
            [PSCustomObject]@{
                Data = $event.TimeCreated.ToString("yyyy-MM-dd")
                Godzina = $event.TimeCreated.ToString("HH:mm:ss")
                Zrodlo = $event.ProviderName
                ID = $event.Id
                Opis = ($event.Message -replace "`r`n", " " -replace ",", ";")
            }
        }
    }
    catch {
        Write-Host ("{0}: NO ACCESS" -f $logName) -ForegroundColor Red
    }
}

# Main part
Write-Host "`nSTARTING THE EVENT EXPORT..." -ForegroundColor Cyan

$timer = [System.Diagnostics.Stopwatch]::StartNew()

# Event collection
$results = @()
$results += Get-FastEvents -logName "Security" -eventIDs @(4616,1102,1100,4634)
$results += Get-FastEvents -logName "Application" -eventIDs @(1000,3079)
$results += Get-FastEvents -logName "System" -eventIDs @(7034,104)

$results | Export-Csv -Path $outputFile -Encoding UTF8 -NoTypeInformation -Delimiter ","

$timer.Stop()
Write-Host "`nCOMPLETED IN $($timer.Elapsed.TotalSeconds.ToString('0.00')) s" -ForegroundColor Cyan
Write-Host "Output file: $((Get-Item $outputFile).FullName)" -ForegroundColor Yellow
Write-Host "`nPress any key to exit..."
[Console]::ReadKey($true) | Out-Null
