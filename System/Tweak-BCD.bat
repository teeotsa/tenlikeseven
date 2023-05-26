@echo off

bcdedit /set dtrace off

bcdedit /event Off

bcdedit /set {current} vmslaunchtype Off

bcdedit /set {current} bootems Off

bcdedit /set {current} ems Off

bcdedit /set {current} hypervisoriommupolicy disable

bcdedit /set {current} hypervisorlaunchtype Off

bcdedit /set hypervisordebug off

bcdedit /bootdebug {bootmgr} off

bcdedit /bootdebug off

bcdedit /debug off

bcdedit /set {current} disabledynamictick yes

bcdedit /set {current} tpmbootentropy ForceDisable

bcdedit /set {current} pae ForceDisable

bcdedit /set {current} disableelamdrivers yes

bcdedit /set {current} bootuxdisabled off

bcdedit /set {current} quietboot off

bcdedit /set {current} bootmenupolicy Legacy

bcdedit /set {current} bootlog no

bcdedit /set {current} nx AlwaysOff

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /d 0 /t REG_DWORD /f

pause