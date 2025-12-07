$y = ([Text.Encoding]::UTF8.GetString)
$b = [Convert]::FromBase64String

# --- Obfuscated type names ---
$A = $y.Invoke($b.Invoke('U2VjdXJpdHkuUHJpbmNpcGFsLldpbmRvd3NQcmluY2lwYWw='))       # WindowsPrincipal
$B = $y.Invoke($b.Invoke('U2VjdXJpdHkuUHJpbmNpcGFsLldpbmRvd3NJZGVudGl0eQ=='))       # WindowsIdentity
$C = $y.Invoke($b.Invoke('U2VjdXJpdHkuUHJpbmNpcGFsLldpbmRvd3NCdWlsdEluUm9sZQ=='))   # WindowsBuiltInRole

# --- Administrator Check (fixed) ---
$identity = [Type]::GetType($B)::GetCurrent()
$principal = New-Object ($A) $identity
$adminRole = [Enum]::Parse([Type]$C,'Administrator')

if (-not ($principal.IsInRole($adminRole))) {
    Write-Host ($y.Invoke($b.Invoke('WW91IGhhdmUgdG8gcnVuIGFzIGFkbWluaXN0cmF0b3I='))) -ForegroundColor Red
    Write-Host ($y.Invoke($b.Invoke('UmVjaHRza2xpY2sgLSBSdW4gYXMgQWRtaW5pc3RyYXRvcg==')))
    pause
    exit
}

# --- Banner ---
$bn = @'
 █████╗ ████████╗██╗  ██╗███████╗██╗  ██╗
██╔══██╗╚══██╔══╝██║  ██║██╔════╝╚██╗██╔╝
███████║   ██║   ███████║█████╗   ╚███╔╝ 
██╔══██║   ██║   ██╔══██║██╔══╝   ██╔██╗ 
██║  ██║   ██║   ██║  ██║███████╗██╔╝ ██╗
╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
'@

$cl = @(
    $y.Invoke($b.Invoke('Qmx1ZQ==')),
    $y.Invoke($b.Invoke('Q3lhbg==')),
    $y.Invoke($b.Invoke('TWFnZW50YQ==')),
    $y.Invoke($b.Invoke('RGFya01hZ2VudGE='))
)

$l = $bn -split "`n"
0..($l.Count-1) | foreach {
    $ci = [Math]::Min([int]($_/2),$cl.Count-1)
    Write-Host $l[$_] -ForegroundColor $cl[$ci]
}

Write-Host ($y.Invoke($b.Invoke('4pqgIEEgVCBIIEUgWCDimqA='))) -ForegroundColor Magenta
Start-Sleep -Milliseconds 3000

# --- Config ---
$of = "events_{0}.csv" -f (Get-Date -Format "yyyyMMdd_HHmm")
$ds = 3
$st = (Get-Date).AddDays(-$ds)

# --- Function ---
function Get-FastEvents {
    param([string]$ln,[int[]]$ids)

    $flt = @{LogName=$ln; ID=$ids; StartTime=$st}

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

Write-Host ($y.Invoke($b.Invoke('U1RBUlRJTkcgVEhFIEVWRU5UIEVYUE9SVC4uLg=='))) -ForegroundColor Cyan

$t = [Diagnostics.Stopwatch]::StartNew()

$r = @()
$r += Get-FastEvents -ln "Security"    -ids @(4616,1102,1100,4634)
$r += Get-FastEvents -ln "Application" -ids @(1000,3079)
$r += Get-FastEvents -ln "System"      -ids @(7034,104)

$r | Export-Csv -Path $of -Encoding UTF8 -NoTypeInformation

$t.Stop()

Write-Host ("COMPLETED IN {0}s" -f $t.Elapsed.TotalSeconds.ToString("0.00")) -ForegroundColor Cyan
Write-Host ("Output: {0}"       -f (Resolve-Path $of)) -ForegroundColor Yellow

Write-Host "Press any key..."
[Console]::ReadKey($true) | Out-Null
