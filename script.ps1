$appName = "Calculator"
$app = Get-Process ("{0}" -f $appName) -ErrorAction SilentlyContinue

while($true) {
    if($app) {
        Write-Host ("Process '{0}' found!" -f $app.Name)
        Get-WmiObject Win32_process -filter ('name = "{0}.exe"' -f $appName) | foreach-object { $_.SetPriority(128) }
        $app.ProcessorAffinity=1
        Read-Host -Prompt "Press 'Enter' to exit"
        return
    }
    else {
        Write-Host ("Couldn't find the right process. `nTrying again in (5s)... `n--------------------" -f $app)
        Start-Sleep -s 5
        $app = Get-Process ("{0}" -f $appName) -ErrorAction SilentlyContinue
    }
}
