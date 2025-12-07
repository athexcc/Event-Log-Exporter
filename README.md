# 📋 Athex EventLog CSV Exporter

The **Event Exporter** efficiently collects and exports critical Windows Event Logs, including Security, Application, and System into a clean, time-labeled CSV file for rapid analysis.


## How It Works

### 1️⃣ Automatic Administrator Check
Before execution, the script automatically checks for administrator privileges.
If not detected, it displays a warning and terminates safely:


YOU MUST RUN AS ADMINISTRATOR!
Right-click -> Run as administrator

2️⃣ Configuration

The script defines key parameters:

$outputFile = "Events_Get-Date -Format 'yyyyMMdd_HHmm'.csv"
$daysBack = 3

* $outputFile → Auto-generated file with a timestamp
* $daysBack → Default lookback period of 3 days (can be modified)

3️⃣ Smart Event Collection

Event data is fetched using FilterHashtable for maximum performance.
The script processes three main logs in parallel:
| Log Name        | Event IDs              | Description                       |
| --------------- | ---------------------- | --------------------------------- |
| **Security**    | 4616, 1102, 1100, 4634 | Time changes, log clears, logoffs |
| **Application** | 1000, 3079             | App crashes and errors            |
| **System**      | 7034, 104              | Service crashes, restarts         |

4️⃣ Output Formatting
Once events are collected, they are exported to a structured CSV file:

Date,Time,Source,ID,Description
"2025-10-10","14:22:15","Microsoft-Windows-Security-Auditing","4624","User login"
"2025-10-10","14:25:01","Application Error","1000","Application chrome.exe crashed"

Output file name example:
* Result_20251012_1430.csv


5️⃣ Execution Summary

At the end, the script shows total execution time and the output path:

Security: 128 events
Application: 42 events
System: 15 events

COMPLETED IN 1.94 s
Output file: C:\Users\Admin\Desktop\Result_20251012_1430.csv

⚙️ Usage
🧩 Steps

* Right-click the script → Run as Administrator
* Wait for completion (usually under 2 seconds)
* Check the generated CSV file in the script directory
## 🚀 How to Run  

### ⚠️ Run as Administrator  
#### Simple Launcher 
```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass; Invoke-Expression (Invoke-RestMethod 'https://raw.githubusercontent.com/athexcc/Event-Log-Exporter/refs/heads/main/EventLogExporter.ps1')
```

This code was rewritten & translated.
