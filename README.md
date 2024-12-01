# Atomic-EVTX Repository

Welcome to the **Atomic-EVTX Repository**! This repository provides a comprehensive dataset of Windows Event Logs generated from simulated attack scenarios on a Windows 10 system. The attacks were orchestrated using the Atomic Red Team framework, providing a detailed and systematic collection of event logs that capture various stages of the simulated attacks.

## About the Dataset

This dataset contains Windows Event Log (`EVTX`) files, along with their JSON representations, capturing events generated by Sysmon (default configuration), Application, System, Security, and Windows PowerShell logs on the target machine. **In total, 1,064 attack scenarios were simulated** to create this dataset. Refer to the `full_list_of_attacks_simulated.csv` file for a detailed list of simulated attacks. 

In total, the attack category technique and attack count in each category is as follows:

| Attack Cycle Stage | Count of Simulated Techniques |
|--------------|-------|
| Initial Access | 12 |
| Exfiltration | 14 |
| Lateral Movement | 21 |
| Collection | 28 |
| Impact | 30 |
| Command-and-Control | 53 |
| Persistence | 60 |
| Execution | 61 |
| Credential Access | 118 |
| Privilege Escalation | 119 |
| Discovery | 181 |
| Defense Evasion | 367 |
| **Total** | **1064** |

### Motivation
While similar datasets exist, they are often limited by size, outdated attack simulations, or incomplete logging. The Atomic-EVTX dataset was designed to address these gaps, providing a more extensive, current, and structured dataset to support cybersecurity research and threat analysis.
***
### `attacks_by_category_unfiltered`
This directory contains **raw, unfiltered EVTX log and JSON files** from a Windows 10 VM immediately after each attack simulation. The logs in this directory have not undergone any modifications or filtering. Each EVTX log file is accompanied by a JSON version of the data for versatility in data processing and analysis. This dataset is valuable for scenarios where custom manipulation, filtering, or transformation of logs is required. For instance, it can be used to convert logs from JSON format into CSV (for tabletop exercises or simulated investigations) or XML (as an alternative format for processing and analysis).
***
### `attacks_by_category_atomic_removed`
This directory contains **raw EVTX and filtered JSON logs** where entries specifically related to the Atomic Red Team framework and pre-attack log-clearing events have been removed. Offensive security tool names remain intact in these logs. This dataset is useful for evaluating the ability to detect known malicious tools within logs and the environment, without the interference of Atomic Red Team framework artifacts that might otherwise compromise the integrity of detection or investigation results.

Within the JSON logs, the following strings were replaced with a string `data`:
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

Additionally, event entries containing any of the following strings were removed from the JSON logs, as they represent residual artifacts from the dataset generation process:
- `"wevtutil.exe" cl Microsoft-Windows-Sysmon/Operational`
- `"wevtutil.exe" cl Application`
- `"wevtutil.exe" cl System`
- `"wevtutil.exe" cl Security`
- `"wevtutil.exe" cl "Windows PowerShell"`
***
### **`attacks_by_category_atomic_and_tools_removed`**  
This directory contains **raw EVTX files with JSON logs filtered**  to exclude entries related to the Atomic Red Team Framework, pre-attack-simulation log-clearing events, and offensive security tool names (e.g., WinPwn.ps1, Meterpreter). This dataset is considered the most "challenging", as the identification of malicious activity relies solely on either executed PowerShell scripts (which require more detailed analysis) or known combinations of Events (or Event IDs) that are indicative of malicious or suspicious behavior.

In addition to the data cleaning done for the `attacks_by_category_atomic_removed` logs, the following strings were replaced with the word `script` (i.e. `WinPwn.ps1` turned into `script.ps1`):
- `WinPwn`
- `Meterpreter`
- `Empire`
- `Cobalt Strike`
- `Mimikatz`
- `PowerSploit`
- `SharpHound`
- `BloodHound`
- `Responder`
- `S3cur3Th1sSh1t`
- `hlldz`
- `Invoke-Phant0m`
- `PowerSharpPack`
- `PowerSharp`
- `Sharpweb`
- `MzHmO`
- `SharpUp`
- `BC-SECURITY`
- `Get-System`
- `Invoke-WMIExec`
- `Kevin-Robertson`
- `obfuscatedps`
- `dccuac`
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
- `dnsexfil`
- `Invoke-DNSExfiltrator`
- `Invoke-MalDoc`
- `blackbyte`
- `netwire`
- `ursnif`
- `bad potato (badpotato)`
- `juicy potato (juicypotato)`
- `petitpotam`
- `octopus`
- `attack`
- `golden ticket`
- `kerberoast`
- `MalDoc`
- `NPPSpy`
- `ProcDump`
- `pypykatz`
- `Out-Minidump`
- `createdump`
- `dumper`
- `Qakbot`
- `adidnsdump`
- `Get-AdComputer`
- `ADSISearcher`
- `botnet`
- `exfil`
- `PsExec`
- `Evil-WinRMv`
- `Backstab`
- `SOAPHound`
- `ADRecon`
- `Kerbrute`
- `Snaffler`
- `LaZagne`
- `Firepwd`
- `WebBrowserPassView`
- `SDelete`
