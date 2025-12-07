# Checking administrator permissions
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] ($($k8192='gH,Jwm_B';$b=[byte[]](0x26);$kb=[System.Text.Encoding]::UTF8.GetBytes($k8192);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k2082=68;$b=[byte[]](0x20);-join($b|%{[char]($_-bxor$k2082)}))+$($k7219='hS(9H>yKtb';$b=[byte[]](0x05);$kb=[System.Text.Encoding]::UTF8.GetBytes($k7219);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k2262='dQas>s';$b=[byte[]](0x0D,0x3F,0x08,0x00,0x4A,0x01,0x05);$kb=[System.Text.Encoding]::UTF8.GetBytes($k2262);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k6734='3YQ3sZLox&]*';$b=[byte[]](0x47,0x36);$kb=[System.Text.Encoding]::UTF8.GetBytes($k6734);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k4275=139;$b=[byte[]](0xf9);-join($b|%{[char]($_-bxor$k4275)}))))) {
    Write-Host (-join($($k2147='m[SRIZM+)s';$b=[byte[]](0x34,0x34,0x26);$kb=[System.Text.Encoding]::UTF8.GetBytes($k2147);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k8216=147;$b=[byte[]](0xb3,0xfb,0xf2,0xe5,0xf6,0xb3,0xe7,0xfc);-join($b|%{[char]($_-bxor$k8216)})),$($k6230=105;$b=[byte[]](0x49,0x1b,0x1c,0x07,0x49,0x08,0x1a);-join($b|%{[char]($_-bxor$k6230)})),$($k1515=14;$b=[byte[]](0x2e,0x6f,0x6a,0x63,0x67,0x60,0x67);-join($b|%{[char]($_-bxor$k1515)})),$($k3013='nq.a;,)';$b=[byte[]](0x1D,0x05,0x5C);$kb=[System.Text.Encoding]::UTF8.GetBytes($k3013);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k4282='&OC,@$)F;fO';$b=[byte[]](0x47,0x3B,0x2C,0x5E);$kb=[System.Text.Encoding]::UTF8.GetBytes($k4282);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})))) -ForegroundColor Red
    Write-Host (-join($($k9167=19;$b=[byte[]](0x41,0x76,0x70);-join($b|%{[char]($_-bxor$k9167)})),$($k5881='AN#U+';$b=[byte[]](0x29,0x3A,0x50,0x3E);$kb=[System.Text.Encoding]::UTF8.GetBytes($k5881);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k1038='=lEoz)WM';$b=[byte[]](0x51,0x05,0x26,0x04,0x5A);$kb=[System.Text.Encoding]::UTF8.GetBytes($k1038);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k6875='.0M8=%zM4Nu';$b=[byte[]](0x03,0x0E,0x6D,0x6A,0x48,0x4B,0x5A);$kb=[System.Text.Encoding]::UTF8.GetBytes($k6875);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k7745='ze+QI[V';$b=[byte[]](0x1B,0x16,0x0B,0x30);$kb=[System.Text.Encoding]::UTF8.GetBytes($k7745);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k3601=7;$b=[byte[]](0x63,0x6a,0x6e,0x69);-join($b|%{[char]($_-bxor$k3601)})),$($k5731=211;$b=[byte[]](0xba,0xa0,0xa7,0xa1,0xb2,0xa7,0xbc);-join($b|%{[char]($_-bxor$k5731)})),$($k6776='-]qXNXP*v0L)j#]';$b=[byte[]](0x5F);$kb=[System.Text.Encoding]::UTF8.GetBytes($k6776);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))))
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
$colors = @($($k9754=$($k7079=222;$b=[byte[]](0xf0,0x86,0xe8,0xb2,0xb6,0x95,0xfd,0xe2,0xbc,0xea,0xf6,0x8f);-join($b|%{[char]($_-bxor$k7079)}));$b=[byte[]](0x6C,0x34,0x43,0x09);$kb=[System.Text.Encoding]::UTF8.GetBytes($k9754);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})), (-join($($k3973='K3HVJe#jBMfD';$b=[byte[]](0x08);$kb=[System.Text.Encoding]::UTF8.GetBytes($k3973);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k7995=')&dOkh';$b=[byte[]](0x50,0x47);$kb=[System.Text.Encoding]::UTF8.GetBytes($k7995);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k7473='>Nch}';$b=[byte[]](0x50);$kb=[System.Text.Encoding]::UTF8.GetBytes($k7473);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})))), ($($k5855='IT_]K#';$b=[byte[]](0x04);$kb=[System.Text.Encoding]::UTF8.GetBytes($k5855);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k6879=5;$b=[byte[]](0x64,0x62,0x60);-join($b|%{[char]($_-bxor$k6879)}))+$($k5197=248;$b=[byte[]](0x96,0x8c);-join($b|%{[char]($_-bxor$k5197)}))+$($k7369='C+{u:67';$b=[byte[]](0x22);$kb=[System.Text.Encoding]::UTF8.GetBytes($k7369);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))), $($k3588=114;$b=[byte[]](0x36,0x13,0x00,0x19,0x3f,0x13,0x15,0x17,0x1c,0x06,0x13);-join($b|%{[char]($_-bxor$k3588)})))

$lines = $banner -split (-join($($k8541='wp]U;394';$b=[byte[]](0x17);$kb=[System.Text.Encoding]::UTF8.GetBytes($k8541);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k8545='gK@cLu)';$b=[byte[]](0x09);$kb=[System.Text.Encoding]::UTF8.GetBytes($k8545);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))))
for ($i = 0; $i -lt $lines.Length; $i++) {
    $color = $colors[ [Math]::Min([int]($i / 2), $colors.Count - 1) ]
    Write-Host $lines[$i] -ForegroundColor $color
}

Write-Host ($($k3383='0Xis:^';$b=[byte[]](0x10,0x78,0x49);$kb=[System.Text.Encoding]::UTF8.GetBytes($k3383);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k8917=222;$b=[byte[]](0xfe);-join($b|%{[char]($_-bxor$k8917)}))+$($k8969='90RI{';$b=[byte[]](0x19,0x10,0x72,0x69);$kb=[System.Text.Encoding]::UTF8.GetBytes($k8969);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k9926=154;$b=[byte[]](0xba,0xba,0xba,0xba,0xba,0xba);-join($b|%{[char]($_-bxor$k9926)}))+$($k3009=37;$b=[byte[]](0x05,0x05);-join($b|%{[char]($_-bxor$k3009)}))+$($k9492=140;$b=[byte[]](0xac,0x6e,0x16,0x2d,0xac);-join($b|%{[char]($_-bxor$k9492)}))+$($k6411='aFkZR';$b=[byte[]](0x20,0x66,0x3F,0x7A,0x1A);$kb=[System.Text.Encoding]::UTF8.GetBytes($k6411);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k1451='Skd!:';$b=[byte[]](0x73,0x2E,0x44,0x79,0x1A);$kb=[System.Text.Encoding]::UTF8.GetBytes($k1451);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k1734=89;$b=[byte[]](0xbb,0xc3,0xf8);-join($b|%{[char]($_-bxor$k1734)}))) -ForegroundColor Magenta
Start-Sleep -Milliseconds 3000

# Configuration
$outputFile = ($($k3458=129;$b=[byte[]](0xe4,0xf7,0xe4,0xef,0xf5,0xf2,0xde);-join($b|%{[char]($_-bxor$k3458)})) + $(Get-Date -Format $($k2125=37;$b=[byte[]](0x5c,0x5c,0x5c,0x5c,0x68,0x68,0x41,0x41,0x7a,0x6d,0x6d,0x48,0x48);-join($b|%{[char]($_-bxor$k2125)}))) + $($k5902=151;$b=[byte[]](0xb9,0xf4,0xe4,0xe1);-join($b|%{[char]($_-bxor$k5902)})))
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
        Write-Host ($($k3003=153;$b=[byte[]](0xe2,0xa9,0xe4,0xa3,0xb9,0xe2,0xa8,0xe4,0xb9,0xfc,0xef,0xfc,0xf7,0xed,0xea);-join($b|%{[char]($_-bxor$k3003)})) -f $logName, $count) -ForegroundColor Green
        
        foreach ($event in $events) {
            [PSCustomObject]@{
                Data = $event.TimeCreated.ToString($($k3502=$($k8835='Zl!OAF3jYA';$b=[byte[]](0x03,0x41,0x13,0x0D,0x69,0x17,0x0D,0x28,0x06,0x1B,0x01,0x42,0x05);$kb=[System.Text.Encoding]::UTF8.GetBytes($k8835);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}));$b=[byte[]](0x20,0x54,0x4B,0x3B,0x05,0x1C,0x73,0x6F,0x3B,0x3E);$kb=[System.Text.Encoding]::UTF8.GetBytes($k3502);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})))
                Godzina = $event.TimeCreated.ToString(($($k1797=236;$b=[byte[]](0xa4);-join($b|%{[char]($_-bxor$k1797)}))+$($k1818='^c2r#,;Npv$4[oN';$b=[byte[]](0x16,0x59,0x5F,0x1F);$kb=[System.Text.Encoding]::UTF8.GetBytes($k1818);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k4673=84;$b=[byte[]](0x6e);-join($b|%{[char]($_-bxor$k4673)}))+$($k1177='YYyh_SSZRPg5';$b=[byte[]](0x2A);$kb=[System.Text.Encoding]::UTF8.GetBytes($k1177);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k8901='}a}ov?C3+U2ErC?';$b=[byte[]](0x0E);$kb=[System.Text.Encoding]::UTF8.GetBytes($k8901);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))))
                Zrodlo = $event.ProviderName
                ID = $event.Id
                Opis = ($event.Message -replace $($k9459=228;$b=[byte[]](0x84,0x96,0x84,0x8a);-join($b|%{[char]($_-bxor$k9459)})), $($k5360='z=HWSI';$b=[byte[]](0x5A);$kb=[System.Text.Encoding]::UTF8.GetBytes($k5360);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})) -replace $($k2938=$($k4727=59;$b=[byte[]](0x12,0x51,0x06,0x69,0x7d,0x06,0x4e,0x1f,0x4b);-join($b|%{[char]($_-bxor$k4727)}));$b=[byte[]](0x05);$kb=[System.Text.Encoding]::UTF8.GetBytes($k2938);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})), $($k4257=239;$b=[byte[]](0xd4);-join($b|%{[char]($_-bxor$k4257)})))
            }
        }
    }
    catch {
        Write-Host ($($k9853=168;$b=[byte[]](0xd3,0x98,0xd5,0x92,0x88,0xe6,0xe7,0x88,0xe9,0xeb,0xeb,0xed,0xfb,0xfb);-join($b|%{[char]($_-bxor$k9853)})) -f $logName) -ForegroundColor Red
    }
}

# Main part
Write-Host ($($k1313='3jVhbT8SY';$b=[byte[]](0x53,0x04,0x05,0x3C);$kb=[System.Text.Encoding]::UTF8.GetBytes($k1313);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k8907='[_[W8W';$b=[byte[]](0x1A,0x0D,0x0F,0x1E);$kb=[System.Text.Encoding]::UTF8.GetBytes($k8907);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k9122='>[q2ugE!b';$b=[byte[]](0x70,0x1C,0x51,0x66,0x3D,0x22);$kb=[System.Text.Encoding]::UTF8.GetBytes($k9122);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k3108='30cl=';$b=[byte[]](0x13,0x75,0x35);$kb=[System.Text.Encoding]::UTF8.GetBytes($k3108);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k5098='C&z:=bb=&Z';$b=[byte[]](0x06,0x68,0x2E,0x1A,0x78,0x3A,0x32);$kb=[System.Text.Encoding]::UTF8.GetBytes($k5098);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k9188=174;$b=[byte[]](0xe1);-join($b|%{[char]($_-bxor$k9188)}))+$($k4440=55;$b=[byte[]](0x65,0x63,0x19);-join($b|%{[char]($_-bxor$k4440)}))+$($k9545='oAt{M_RZ-V}Z';$b=[byte[]](0x41,0x6F);$kb=[System.Text.Encoding]::UTF8.GetBytes($k9545);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))) -ForegroundColor Cyan

$timer = [System.Diagnostics.Stopwatch]::StartNew()

# Event collection
$results = @()
$results += Get-FastEvents -logName (-join($($k8599='T*G06KIA>ar';$b=[byte[]](0x07,0x4F);$kb=[System.Text.Encoding]::UTF8.GetBytes($k8599);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k1983='6k_l8}';$b=[byte[]](0x55,0x1E);$kb=[System.Text.Encoding]::UTF8.GetBytes($k1983);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k9740=97;$b=[byte[]](0x13,0x08);-join($b|%{[char]($_-bxor$k9740)})),$($k7522='jJ^gg';$b=[byte[]](0x1E);$kb=[System.Text.Encoding]::UTF8.GetBytes($k7522);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k5813=151;$b=[byte[]](0xee);-join($b|%{[char]($_-bxor$k5813)})))) -eventIDs @(4616,1102,1100,4634)
$results += Get-FastEvents -logName (-join($($k9891=156;$b=[byte[]](0xdd,0xec,0xec,0xf0);-join($b|%{[char]($_-bxor$k9891)})),$($k1218=172;$b=[byte[]](0xc5,0xcf,0xcd,0xd8,0xc5,0xc3);-join($b|%{[char]($_-bxor$k1218)})),$($k6696='ZME<2g,';$b=[byte[]](0x34);$kb=[System.Text.Encoding]::UTF8.GetBytes($k6696);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})))) -eventIDs @(1000,3079)
$results += Get-FastEvents -logName $($k5837=$($k7258=139;$b=[byte[]](0xe3,0xed,0xed,0xbc,0xb4,0xdf,0xe4,0xb3,0xcb,0xef,0xc1,0xc7);-join($b|%{[char]($_-bxor$k7258)}));$b=[byte[]](0x3B,0x1F,0x15,0x43,0x5A,0x39);$kb=[System.Text.Encoding]::UTF8.GetBytes($k5837);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})) -eventIDs @(7034,104)

# Zapisz wyniki do pliku CSV
$results | Export-Csv -Path $outputFile -Encoding UTF8 -NoTypeInformation -Delimiter $($k6789='jQY(GjI5eZ^*i';$b=[byte[]](0x46);$kb=[System.Text.Encoding]::UTF8.GetBytes($k6789);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))

$timer.Stop()
Write-Host ((-join($($k7925='nM=wn[Ui';$b=[byte[]](0x0E,0x23,0x7E);$kb=[System.Text.Encoding]::UTF8.GetBytes($k7925);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k6557=99;$b=[byte[]](0x2c);-join($b|%{[char]($_-bxor$k6557)})),$($k2000='T?RF[1Z0yaW@cdo';$b=[byte[]](0x19,0x6F,0x1E,0x03,0x0F,0x74,0x1E);$kb=[System.Text.Encoding]::UTF8.GetBytes($k2000);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k9930=32;$b=[byte[]](0x00);-join($b|%{[char]($_-bxor$k9930)})),$($k8902=254;$b=[byte[]](0xb7);-join($b|%{[char]($_-bxor$k8902)})),$($k5866=64;$b=[byte[]](0x0e);-join($b|%{[char]($_-bxor$k5866)})),$($k7009=103;$b=[byte[]](0x47);-join($b|%{[char]($_-bxor$k7009)})))) + $($timer.Elapsed.TotalSeconds.ToString($($k4241='C=NGLAe';$b=[byte[]](0x73,0x13,0x7E,0x77);$kb=[System.Text.Encoding]::UTF8.GetBytes($k4241);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))) + (-join($($k1201='DLZLDGG';$b=[byte[]](0x6D);$kb=[System.Text.Encoding]::UTF8.GetBytes($k1201);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k4911='+*<_rzgz*}4-';$b=[byte[]](0x0B,0x59);$kb=[System.Text.Encoding]::UTF8.GetBytes($k4911);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))))) -ForegroundColor Cyan
Write-Host ((-join($($k7778='&C=ujb';$b=[byte[]](0x69,0x36,0x49,0x05);$kb=[System.Text.Encoding]::UTF8.GetBytes($k7778);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k8636='SJL,-+a%P?G';$b=[byte[]](0x26,0x3E,0x6C,0x4A,0x44);$kb=[System.Text.Encoding]::UTF8.GetBytes($k8636);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k2541='KsN?yVc!b<:';$b=[byte[]](0x27);$kb=[System.Text.Encoding]::UTF8.GetBytes($k2541);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k7933='*AV4+;Ku]T!:';$b=[byte[]](0x4F,0x7B,0x76);$kb=[System.Text.Encoding]::UTF8.GetBytes($k7933);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})))) + $((Get-Item $outputFile) + ($($k7129=225;$b=[byte[]](0xcf);-join($b|%{[char]($_-bxor$k7129)}))+$($k7235='rkh^We)n]*$X6';$b=[byte[]](0x34,0x1E,0x04);$kb=[System.Text.Encoding]::UTF8.GetBytes($k7235);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k6726=']tH<0F^><PX';$b=[byte[]](0x31,0x3A,0x29,0x51,0x55);$kb=[System.Text.Encoding]::UTF8.GetBytes($k6726);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))+$($k4296='BYv60W&jIWNwG}6';$b=[byte[]](0x6B);$kb=[System.Text.Encoding]::UTF8.GetBytes($k4296);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})))) -ForegroundColor Yellow
Write-Host (-join($($k7880='&4]bZ,USs&';$b=[byte[]](0x46,0x5A,0x0D);$kb=[System.Text.Encoding]::UTF8.GetBytes($k7880);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k5977='VcSXjr]cJ';$b=[byte[]](0x24,0x06,0x20,0x2B);$kb=[System.Text.Encoding]::UTF8.GetBytes($k5977);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k1819=70;$b=[byte[]](0x66,0x27,0x28,0x3f,0x66,0x2d,0x23,0x3f);-join($b|%{[char]($_-bxor$k1819)})),$($k9659='e32c@%KXk3';$b=[byte[]](0x45);$kb=[System.Text.Encoding]::UTF8.GetBytes($k9659);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k5562='S.D#>[HbB.:ET';$b=[byte[]](0x27,0x41,0x64,0x46,0x46,0x32);$kb=[System.Text.Encoding]::UTF8.GetBytes($k5562);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])})),$($k4654='b$Ci+5*#&Y';$b=[byte[]](0x16,0x0A,0x6D,0x47);$kb=[System.Text.Encoding]::UTF8.GetBytes($k4654);-join(0..($b.Length-1)|%{[char]($b[$_]-bxor$kb[$_%$kb.Length])}))))
[Console]::ReadKey($true) | Out-Null
