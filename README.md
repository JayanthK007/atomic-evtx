Welcome to Atomic-EVTX Repo! 

What is this?
This is a Windows Event Log (and associated JSON version of it) dataset, which contains logs from simulated attacks. Specifically, Atomic Red Team Framework was used to simulate attacks against the target Windows 10 machine. Afterwards the Sysmon, Application, System, Security and Windows Powershell logs were extracted from the target machine. 

In total 1064 attacks were simulated.

Why? 
1. Similar datasets at the time of creation of this one were either too small, outdated or incomplete. 



### **Directory: `attacks_by_category_unfiltered`**  
This directory contains raw, unfiltered EVTX log files captured directly from a Windows 10 VM after attack simulations. No modifications or filtering have been applied. Each EVTX log has an associated JSON log.
### **Directory: `attacks_by_category_atomic_removed`**  
This directory contains raw EVTX files with JSON logs filtered to exclude entries related to the Atomic Red Team Framework and log-clearing events from the pre-attack stage. Offensive security tool names are still present.

Within the JSON logs, the following strings were replaced with a random 5-character string:
- `atomic`
- `atomics`
- `team`
- `atomic-red-team`
- `redcanary`
- `redcanaryco`
- `canary`
- `atomicredteam`
- `payload`
- `Red team`


Additionally, event entries containing any of the following strings were deleted from the JSON logs:
- `"wevtutil.exe" cl Microsoft-Windows-Sysmon/Operational`
- `"wevtutil.exe" cl Application`
- `"wevtutil.exe" cl System`
- `"wevtutil.exe" cl Security`
- `"wevtutil.exe" cl "Windows PowerShell"`

### **Directory: `attacks_by_category_atomic_and_tools_removed`**  
This directory contains raw EVTX files with JSON logs filtered to exclude entries related to the Atomic Red Team Framework, pre-attack-simulation log-clearing events, and offensive security tool names (e.g., WinPwn.ps1, Meterpreter).

In addition to the data cleaning done for the `attacks_by_category_atomic_removed` logs, the following strings were replaced with the word `file`:
- `WinPwn.ps1`
- `Meterpreter`
- `Empire`
- `Cobalt Strike`
- `Mimikatz`
- `PowerSploit`
- `SharpHound`
- `BloodHound`
- `Responder`
- `S3cur3Th1sSh1t`
- `WinPwn`
- `hlldz`
- `Invoke-Phant0m`
- `PowerSharpPack`
- `Sharpweb`
- `MzHmO`
- `SharpUp`
- `BC-SECURITY`
- `Get-System`
- `Invoke-WMIExec`
- `Kevin-Robertson`
- `obfuscatedps`
- `dccuac.ps1`
- `Invoke-SharpWatson`
- `Rubeus`
- `ExternalPayloads`
- `nanodump`
- `gsecdump`
- `uacme`
- `crackmapexec`
- `phant0m`
- `powerview`
- `uacbypass`
- `Psiphon`
- `exfiltration`
- `dnsexfil.ps1`
- `Invoke-DNSExfiltrator`
- `Invoke-MalDoc`
- `collection`
