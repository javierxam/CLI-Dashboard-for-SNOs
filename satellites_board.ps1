do
{
    [int]$x=2
    $bigData= @(0,0,0,0,0,0)
    for ($x = 2; $x -le 50; $x++) {
        if ($x -lt 10) {
            Write-Host ""
            $SNOdata = Invoke-WebRequest ("http://127.0.0.1:1400"+$x+"/api/sno") | ConvertFrom-Json
            Write-Host "NODO "$x -NoNewline " | "
            for ($i = 0; $i -le 5; $i++) {
                Write-Host (($SNOdata.satellites[$i].currentStorageUsed/1000000000000).ToString("N6")) -NoNewline "  "
                Write-Host ($SNOdata.satellites[$i].url).substring(0, 3) -NoNewline "  |  "
                $bigData[$i]=$bigData[$i]+($SNOdata.satellites[$i].currentStorageUsed)


            }
        }elseif($x -in (32,33,35,36,39,44,45)){}
        
        else{
            Write-Host ""
            $SNOdata = Invoke-WebRequest ("http://127.0.0.1:140"+$x+"/api/sno") | ConvertFrom-Json
            Write-Host "NODO"$x -NoNewline " | "
            for ($i = 0; $i -le 5; $i++) {
                Write-Host (($SNOdata.satellites[$i].currentStorageUsed/1000000000000).ToString("N6")) -NoNewline "  "
                Write-Host ($SNOdata.satellites[$i].url).substring(0, 3) -NoNewline "  |  "
                $bigData[$i]=$bigData[$i]+($SNOdata.satellites[$i].currentStorageUsed)
            }
        }
    }

    Write-Host ""
    Write-Host "--------------------------------------------------------------------------------------------------------------------------------"
    Write-Host "TOTAL    | " -NoNewline
    for ($z = 0; $z -le 5; $z++) {
        Write-Host ($bigData[$z]/1000000000000).ToString("N6") -NoNewline "  "
        Write-Host ($SNOdata.satellites[$z].url).substring(0, 3) -NoNewline "  |  "
    }
    Write-Host ""
    Write-Host ""
    Write-Host "Refresh every 5 minutes"
    Write-Host ""
    Write-Host ""
    Write-Host ""
    Write-Host ""
    #Start-Sleep -Seconds 300
    
}while ($false)
