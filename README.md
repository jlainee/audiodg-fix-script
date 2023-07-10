# audiodg-fix

Script automatically changes the affinity & priority values of "audiodg.exe" process to fix crackling noises that can occur while using VoiceMeeter.

Process affinity set to 1st core on CPU.  
Process priority set to High.  

## How To Use

Create a shortcut of the script and change its 'Target' to:  
```
powershell.exe -ExecutionPolicy Bypass -File C:\your-file-path\script.ps1
```
Press **WIN + R** to open Run command window and type **shell:startup**  
Place the shortcut into your startup folder in order for it to run at startup.
