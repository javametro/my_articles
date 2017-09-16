## Freqency Use commands
- Get-Help
- Get-Event
- Get-Process
- Set-Service
- Get-Verb
- route print
- hostname
- net statistics workstation
- whatif
- confirm
- Export-Console myconsole
- powershell -nologo
- powershell -version 2
- powershell -psconsolefile myconsole.psc1
- powershell -command "& {Get-Process}"
- Update-Help
- update-help -module * -Force -ea 0
- get-command
- get-member
- get-psdrive
- get-alias
- new-alias
- set-location
- typeperf
- bootcfg


## Remoting and Jobs
- Start-Job -ScriptBlock {get-process}
- Get-Job -Name job10
- get-job -id 10
- receive-job -name job10
- remove-job -name job10
