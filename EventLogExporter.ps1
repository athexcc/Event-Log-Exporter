# --- Base64 helper ---
$dec = { param($s) [Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($s)) }

# --- Administrator check ---
$T1 = &$dec 'U2VjdXJpdHkuUHJpbmNpcGFsLldpbmRvd3NQcmluY2lwYWw='
$T2 = &$dec 'U2VjdXJpdHkuUHJpbmNpcGFsLldpbmRvd3NJZGVudGl0eQ=='
$T3 = &$dec 'U2VjdXJpdHkuUHJpbmNpcGFsLldpbmRvd3NCdWlsdEluUm9sZQ=='

$principal = New-Object ($T1) ([Type]::GetType($T2)::GetCurrent())
$adminRole = [Enum]::Parse([Type]$T3,'Administrator')

if (-not $principal.IsInRole($adminRole)) {
    Write-Host (&$dec 'WW91IGhhdmUgdG8gcnVuIGFzIGFkbWluaXN0cmF0b3I=') -ForegroundColor Red
    Write-Host (&$dec 'UmVjaHRza2xpY2sgLSBSdW4gYXMgQWRtaW5pc3RyYXRvcg==')
    Pause
    exit
}

# --- Banner ---
$banner = @'
 █████╗ ████████╗██╗  ██╗███████╗██╗  ██╗
██╔══██╗╚══██╔══╝██║  ██║██╔════╝╚██╗██╔╝
███████║   ██║   ███████║█████╗   ╚███╔╝ 
██╔══██║   ██║   ██╔══██║██╔══╝   ██╔██╗ 
██║  ██║   ██║   ██║  ██║███████╗██╔╝ ██╗
╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
'@

$colors = @(
    &$dec 'Qmx1ZQ==',
    &$dec 'Q3lhbg==',
    &$dec 'TWFnZW50YQ==',
    &$dec 'RGFya01hZ2VudGE='
)

$lines = $banner -split "`n"
for ($i=0; $i -lt $lines.Count; $i++) {
    $ci = [Math]::Min([int]($i/2), $colors.Count-1)
    Write-Host $lines[$i] -ForegroundColor $colors[$ci]
}

Write-Host (&$dec '4pqgIEEgVCBIIEUgWCDimqA=') -ForegroundColor Magenta
Start-Sleep -Milliseconds 1000

# --- Config ---
$output = "events_{0}.csv" -f (Get-Date -Format 'yyyyMMdd_HHmm')
$start = (Get-Date).AddDays(-3)

# --- Event export ---
function Get-FastEvents {
    param([string]$ln, [int[]]$ids)

    $flt = @{ LogName=$ln; ID=$ids; StartTime=$start }

    try {
        $ev = Get-WinEvent -FilterHashtable $flt -MaxEvents 1000 -ErrorAction Stop
        Write-Host ("{0}: {1} events" -f $ln,$ev.Count) -ForegroundColor Green

        foreach ($e in $ev) {
            [PSCustomObject]@{
                Data    = $e.TimeCreated.ToString("yyyy-MM-dd")
                Godzina = $e.TimeCreated.ToString("HH:mm:ss")
                Zrodlo  = $e.ProviderName
                ID      = $e.Id
                Opis    = ($e.Message -replace "`r`n"," " -replace ",",";")
            }
        }
    }
    catch {
        Write-Host ("{0}: NO ACCESS" -f $ln) -ForegroundColor Red
    }
}

Write-Host (&$dec 'U1RBUlRJTkcgVEhFIEVWRU5UIEVYUE9SVC4uLg==') -ForegroundColor Cyan
$sw=[Diagnostics.Stopwatch]::StartNew()

$r=@()
$r+=Get-FastEvents Security @(4616,1102,1100,4634)
$r+=Get-FastEvents Application @(1000,3079)
$r+=Get-FastEvents System @(7034,104)

$r | Export-Csv -Path $output -Encoding UTF8 -NoTypeInformation

$sw.Stop()
Write-Host ("COMPLETED IN {0}s" -f $sw.Elapsed.TotalSeconds.ToString('0.00')) -ForegroundColor Cyan
Write-Host ("Output: {0}" -f (Resolve-Path $output)) -ForegroundColor Yellow

Write-Host "Press any key..."
[Console]::ReadKey($true) | Out-Null
