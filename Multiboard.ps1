
# CLI Dashboard for SNOs
#  by XAM's Studio

do
{
	Clear-Host
	
	$sat1Data = Invoke-WebRequest 'http://127.0.0.1:14001/api/sno/satellites' | ConvertFrom-Json
	$SNO1data = Invoke-WebRequest 'http://127.0.0.1:14001/api/sno' | ConvertFrom-Json
	$pay1Data = Invoke-WebRequest 'http://127.0.0.1:14001/api/sno/estimated-payout' | ConvertFrom-Json
	Write-Host "`t`t`t###########" -ForegroundColor Magenta -NoNewline; Write-Host " XAMboard " -ForegroundColor Green -NoNewline; Write-Host "###############" -ForegroundColor Magenta
	Write-Host "______________________________________________________________________________________________________________"
	Write-Host "METRICS (GB) : Used`tTotal`tTrash`tAvail`tEgress`tIngress`t| $ Current`t| $ Previous`t| $ Expected " -ForegroundColor Cyan
	Write-Host "NODO1`t      " ([math]::round($SNO1data.diskSpace.used/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO1data.diskSpace.available/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO1data.diskSpace.trash/1000000000)) "`t"-NoNewline
	Write-Host (([math]::round($SNO1data.diskSpace.available/1000000000)) -(([math]::round($SNO1data.diskSpace.used/1000000000)) + ([math]::round($SNO1data.diskSpace.trash/1000000000))) )"`t"-NoNewline
	Write-Host ([math]::round($sat1Data.egressSummary/1000000000))"`t"-NoNewline
	Write-Host ([math]::Round($sat1Data.ingressSummary/1000000000))"`t|   "-NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay1Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay1Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay1Data.currentMonthExpectations, 2)/100))
	
	$sat2Data = Invoke-WebRequest 'http://127.0.0.1:14002/api/sno/satellites' | ConvertFrom-Json
	$SNO2data = Invoke-WebRequest 'http://127.0.0.1:14002/api/sno' | ConvertFrom-Json
	$pay2Data = Invoke-WebRequest 'http://127.0.0.1:14002/api/sno/estimated-payout' | ConvertFrom-Json

	Write-Host "NODO2`t      " ([math]::round($SNO2data.diskSpace.used/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO2data.diskSpace.available/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO2data.diskSpace.trash/1000000000)) "`t"-NoNewline
	Write-Host (([math]::round($SNO2data.diskSpace.available/1000000000)) -(([math]::round($SNO2data.diskSpace.used/1000000000)) + ([math]::round($SNO2data.diskSpace.trash/1000000000))) )"`t"-NoNewline
	Write-Host ([math]::round($sat2Data.egressSummary/1000000000))"`t"-NoNewline
	Write-Host ([math]::Round($sat2Data.ingressSummary/1000000000))"`t|   "-NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay2Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay2Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay2Data.currentMonthExpectations, 2)/100))
	
	$sat3Data = Invoke-WebRequest 'http://127.0.0.1:14003/api/sno/satellites' | ConvertFrom-Json
	$SNO3data = Invoke-WebRequest 'http://127.0.0.1:14003/api/sno' | ConvertFrom-Json
	$pay3Data = Invoke-WebRequest 'http://127.0.0.1:14003/api/sno/estimated-payout' | ConvertFrom-Json

	Write-Host "NODO3`t      " ([math]::round($SNO3data.diskSpace.used/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO3data.diskSpace.available/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO3data.diskSpace.trash/1000000000)) "`t"-NoNewline
	Write-Host (([math]::round($SNO3data.diskSpace.available/1000000000)) -(([math]::round($SNO3data.diskSpace.used/1000000000)) + ([math]::round($SNO3data.diskSpace.trash/1000000000))) )"`t"-NoNewline
	Write-Host ([math]::round($sat3Data.egressSummary/1000000000))"`t"-NoNewline
	Write-Host ([math]::Round($sat3Data.ingressSummary/1000000000))"`t|   "-NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay3Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay3Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay3Data.currentMonthExpectations, 2)/100))
	
	$sat4Data = Invoke-WebRequest 'http://127.0.0.1:14004/api/sno/satellites' | ConvertFrom-Json
	$SNO4data = Invoke-WebRequest 'http://127.0.0.1:14004/api/sno' | ConvertFrom-Json
	$pay4Data = Invoke-WebRequest 'http://127.0.0.1:14004/api/sno/estimated-payout' | ConvertFrom-Json

	Write-Host "NODO4`t      " ([math]::round($SNO4data.diskSpace.used/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO4data.diskSpace.available/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO4data.diskSpace.trash/1000000000)) "`t"-NoNewline
	Write-Host (([math]::round($SNO4data.diskSpace.available/1000000000)) -(([math]::round($SNO4data.diskSpace.used/1000000000)) + ([math]::round($SNO4data.diskSpace.trash/1000000000))) )"`t"-NoNewline
	Write-Host ([math]::round($sat4Data.egressSummary/1000000000))"`t"-NoNewline
	Write-Host ([math]::Round($sat4Data.ingressSummary/1000000000))"`t|   "-NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay4Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay4Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay4Data.currentMonthExpectations, 2)/100))


	$sat5Data = Invoke-WebRequest 'http://127.0.0.1:14005/api/sno/satellites' | ConvertFrom-Json
	$SNO5data = Invoke-WebRequest 'http://127.0.0.1:14005/api/sno' | ConvertFrom-Json
	$pay5Data = Invoke-WebRequest 'http://127.0.0.1:14005/api/sno/estimated-payout' | ConvertFrom-Json

	Write-Host "NODO5`t      " ([math]::round($SNO5data.diskSpace.used/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO5data.diskSpace.available/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO5data.diskSpace.trash/1000000000)) "`t"-NoNewline
	Write-Host (([math]::round($SNO5data.diskSpace.available/1000000000)) -(([math]::round($SNO5data.diskSpace.used/1000000000)) + ([math]::round($SNO5data.diskSpace.trash/1000000000))) )"`t"-NoNewline
	Write-Host ([math]::round($sat5Data.egressSummary/1000000000))"`t"-NoNewline
	Write-Host ([math]::Round($sat5Data.ingressSummary/1000000000))"`t|   "-NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay5Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay5Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay5Data.currentMonthExpectations, 2)/100))

	$sat6Data = Invoke-WebRequest 'http://127.0.0.1:14006/api/sno/satellites' | ConvertFrom-Json
	$SNO6data = Invoke-WebRequest 'http://127.0.0.1:14006/api/sno' | ConvertFrom-Json
	$pay6Data = Invoke-WebRequest 'http://127.0.0.1:14006/api/sno/estimated-payout' | ConvertFrom-Json

	Write-Host "NODO6`t      " ([math]::round($SNO6data.diskSpace.used/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO6data.diskSpace.available/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO6data.diskSpace.trash/1000000000)) "`t"-NoNewline
	Write-Host (([math]::round($SNO6data.diskSpace.available/1000000000)) -(([math]::round($SNO6data.diskSpace.used/1000000000)) + ([math]::round($SNO6data.diskSpace.trash/1000000000))) )"`t"-NoNewline
	Write-Host ([math]::round($sat6Data.egressSummary/1000000000))"`t"-NoNewline
	Write-Host ([math]::Round($sat6Data.ingressSummary/1000000000))"`t|   "-NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay6Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay6Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay6Data.currentMonthExpectations, 2)/100))
	
	$sat7Data = Invoke-WebRequest 'http://127.0.0.1:14007/api/sno/satellites' | ConvertFrom-Json
	$SNO7data = Invoke-WebRequest 'http://127.0.0.1:14007/api/sno' | ConvertFrom-Json
	$pay7Data = Invoke-WebRequest 'http://127.0.0.1:14007/api/sno/estimated-payout' | ConvertFrom-Json

	Write-Host "NODO7`t      " ([math]::round($SNO7data.diskSpace.used/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO7data.diskSpace.available/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO7data.diskSpace.trash/1000000000)) "`t"-NoNewline
	Write-Host (([math]::round($SNO7data.diskSpace.available/1000000000)) -(([math]::round($SNO7data.diskSpace.used/1000000000)) + ([math]::round($SNO7data.diskSpace.trash/1000000000))) )"`t"-NoNewline
	Write-Host ([math]::round($sat7Data.egressSummary/1000000000))"`t"-NoNewline
	Write-Host ([math]::Round($sat7Data.ingressSummary/1000000000))"`t|   "-NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay7Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay7Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay7Data.currentMonthExpectations, 2)/100))

    $sat8Data = Invoke-WebRequest 'http://127.0.0.1:14008/api/sno/satellites' | ConvertFrom-Json
	$SNO8data = Invoke-WebRequest 'http://127.0.0.1:14008/api/sno' | ConvertFrom-Json
	$pay8Data = Invoke-WebRequest 'http://127.0.0.1:14008/api/sno/estimated-payout' | ConvertFrom-Json

	Write-Host "NODO8`t      " ([math]::round($SNO8data.diskSpace.used/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO8data.diskSpace.available/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO8data.diskSpace.trash/1000000000)) "`t"-NoNewline
	Write-Host (([math]::round($SNO8data.diskSpace.available/1000000000)) -(([math]::round($SNO8data.diskSpace.used/1000000000)) + ([math]::round($SNO8data.diskSpace.trash/1000000000))) )"`t"-NoNewline
	Write-Host ([math]::round($sat8Data.egressSummary/1000000000))"`t"-NoNewline
	Write-Host ([math]::Round($sat8Data.ingressSummary/1000000000))"`t|   "-NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay8Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay8Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay8Data.currentMonthExpectations, 2)/100))

	$sat9Data = Invoke-WebRequest 'http://127.0.0.1:14009/api/sno/satellites' | ConvertFrom-Json
	$SNO9data = Invoke-WebRequest 'http://127.0.0.1:14009/api/sno' | ConvertFrom-Json
	$pay9Data = Invoke-WebRequest 'http://127.0.0.1:14009/api/sno/estimated-payout' | ConvertFrom-Json

	Write-Host "NODO9`t      " ([math]::round($SNO9data.diskSpace.used/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO9data.diskSpace.available/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO9data.diskSpace.trash/1000000000)) "`t"-NoNewline
	Write-Host (([math]::round($SNO9data.diskSpace.available/1000000000)) -(([math]::round($SNO9data.diskSpace.used/1000000000)) + ([math]::round($SNO9data.diskSpace.trash/1000000000))) )"`t"-NoNewline
	Write-Host ([math]::round($sat9Data.egressSummary/1000000000))"`t"-NoNewline
	Write-Host ([math]::Round($sat9Data.ingressSummary/1000000000))"`t|   "-NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay9Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay9Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay9Data.currentMonthExpectations, 2)/100))

	$sat10Data = Invoke-WebRequest 'http://127.0.0.1:14010/api/sno/satellites' | ConvertFrom-Json
	$SNO10data = Invoke-WebRequest 'http://127.0.0.1:14010/api/sno' | ConvertFrom-Json
	$pay10Data = Invoke-WebRequest 'http://127.0.0.1:14010/api/sno/estimated-payout' | ConvertFrom-Json

	Write-Host "NODO10`t      " ([math]::round($SNO10data.diskSpace.used/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO10data.diskSpace.available/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO10data.diskSpace.trash/1000000000)) "`t"-NoNewline
	Write-Host (([math]::round($SNO10data.diskSpace.available/1000000000)) -(([math]::round($SNO10data.diskSpace.used/1000000000)) + ([math]::round($SNO10data.diskSpace.trash/1000000000))) )"`t"-NoNewline
	Write-Host ([math]::round($sat10Data.egressSummary/1000000000))"`t"-NoNewline
	Write-Host ([math]::Round($sat10Data.ingressSummary/1000000000))"`t|   "-NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay10Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay10Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay10Data.currentMonthExpectations, 2)/100))

	$sat11Data = Invoke-WebRequest 'http://127.0.0.1:14011/api/sno/satellites' | ConvertFrom-Json
	$SNO11data = Invoke-WebRequest 'http://127.0.0.1:14011/api/sno' | ConvertFrom-Json
	$pay11Data = Invoke-WebRequest 'http://127.0.0.1:14011/api/sno/estimated-payout' | ConvertFrom-Json

	Write-Host "NODO11`t      " ([math]::round($SNO11data.diskSpace.used/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO11data.diskSpace.available/1000000000)) "`t"-NoNewline
	Write-Host ([math]::round($SNO11data.diskSpace.trash/1000000000)) "`t"-NoNewline
	Write-Host (([math]::round($SNO11data.diskSpace.available/1000000000)) -(([math]::round($SNO11data.diskSpace.used/1000000000)) + ([math]::round($SNO11data.diskSpace.trash/1000000000))) )"`t"-NoNewline
	Write-Host ([math]::round($sat11Data.egressSummary/1000000000))"`t"-NoNewline
	Write-Host ([math]::Round($sat11Data.ingressSummary/1000000000))"`t|   "-NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay11Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay11Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
	Write-Host ('{0:0.##}' -f ([math]::Round($pay11Data.currentMonthExpectations, 2)/100))
 
	$sat12Data = Invoke-WebRequest 'http://127.0.0.1:14012/api/sno/satellites' | ConvertFrom-Json
	$SNO12data = Invoke-WebRequest 'http://127.0.0.1:14012/api/sno' | ConvertFrom-Json
	$pay12Data = Invoke-WebRequest 'http://127.0.0.1:14012/api/sno/estimated-payout' | ConvertFrom-Json

	Write-Host "NODO12`t      " ([math]::round($SNO12data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO12data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO12data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO12data.diskSpace.available/1000000000)) -(([math]::round($SNO12data.diskSpace.used/1000000000)) + ([math]::round($SNO12data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat12Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat12Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay12Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay12Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay12Data.currentMonthExpectations, 2)/100))


	$sat13Data = Invoke-WebRequest 'http://127.0.0.1:14013/api/sno/satellites' | ConvertFrom-Json
	$SNO13data = Invoke-WebRequest 'http://127.0.0.1:14013/api/sno' | ConvertFrom-Json
	$pay13Data = Invoke-WebRequest 'http://127.0.0.1:14013/api/sno/estimated-payout' | ConvertFrom-Json

	Write-Host "NODO13`t      " ([math]::round($SNO13data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO13data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO13data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO13data.diskSpace.available/1000000000)) -(([math]::round($SNO13data.diskSpace.used/1000000000)) + ([math]::round($SNO13data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat13Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat13Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay13Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay13Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay13Data.currentMonthExpectations, 2)/100))

	$sat14Data = Invoke-WebRequest 'http://127.0.0.1:14014/api/sno/satellites' | ConvertFrom-Json
	$SNO14data = Invoke-WebRequest 'http://127.0.0.1:14014/api/sno' | ConvertFrom-Json
	$pay14Data = Invoke-WebRequest 'http://127.0.0.1:14014/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO14`t      " ([math]::round($SNO14data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO14data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO14data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO14data.diskSpace.available/1000000000)) -(([math]::round($SNO14data.diskSpace.used/1000000000)) + ([math]::round($SNO14data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat14Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat14Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay14Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay14Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay14Data.currentMonthExpectations, 2)/100))

	$sat17Data = Invoke-WebRequest 'http://127.0.0.1:14017/api/sno/satellites' | ConvertFrom-Json
	$SNO17data = Invoke-WebRequest 'http://127.0.0.1:14017/api/sno' | ConvertFrom-Json
	$pay17Data = Invoke-WebRequest 'http://127.0.0.1:14017/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO17`t      " ([math]::round($SNO17data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO17data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO17data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO17data.diskSpace.available/1000000000)) -(([math]::round($SNO17data.diskSpace.used/1000000000)) + ([math]::round($SNO17data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat17Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat17Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay17Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay17Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay17Data.currentMonthExpectations, 2)/100))

	$sat18Data = Invoke-WebRequest 'http://127.0.0.1:14018/api/sno/satellites' | ConvertFrom-Json
	$SNO18data = Invoke-WebRequest 'http://127.0.0.1:14018/api/sno' | ConvertFrom-Json
	$pay18Data = Invoke-WebRequest 'http://127.0.0.1:14018/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO18`t      " ([math]::round($SNO18data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO18data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO18data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO18data.diskSpace.available/1000000000)) -(([math]::round($SNO18data.diskSpace.used/1000000000)) + ([math]::round($SNO18data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat18Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat18Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay18Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay18Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay18Data.currentMonthExpectations, 2)/100))

	$sat19Data = Invoke-WebRequest 'http://127.0.0.1:14019/api/sno/satellites' | ConvertFrom-Json
	$SNO19data = Invoke-WebRequest 'http://127.0.0.1:14019/api/sno' | ConvertFrom-Json
	$pay19Data = Invoke-WebRequest 'http://127.0.0.1:14019/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO19`t      " ([math]::round($SNO19data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO19data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO19data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO19data.diskSpace.available/1000000000)) -(([math]::round($SNO19data.diskSpace.used/1000000000)) + ([math]::round($SNO19data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat19Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat19Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay19Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay19Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay19Data.currentMonthExpectations, 2)/100))

	$sat22Data = Invoke-WebRequest 'http://127.0.0.1:14022/api/sno/satellites' | ConvertFrom-Json
	$SNO22data = Invoke-WebRequest 'http://127.0.0.1:14022/api/sno' | ConvertFrom-Json
	$pay22Data = Invoke-WebRequest 'http://127.0.0.1:14022/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO22`t      " ([math]::round($SNO22data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO22data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO22data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO22data.diskSpace.available/1000000000)) -(([math]::round($SNO22data.diskSpace.used/1000000000)) + ([math]::round($SNO22data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat22Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat22Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay22Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay22Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay22Data.currentMonthExpectations, 2)/100))

	$sat25Data = Invoke-WebRequest 'http://127.0.0.1:14025/api/sno/satellites' | ConvertFrom-Json
	$SNO25data = Invoke-WebRequest 'http://127.0.0.1:14025/api/sno' | ConvertFrom-Json
	$pay25Data = Invoke-WebRequest 'http://127.0.0.1:14025/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO25`t      " ([math]::round($SNO25data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO25data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO25data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO25data.diskSpace.available/1000000000)) -(([math]::round($SNO25data.diskSpace.used/1000000000)) + ([math]::round($SNO25data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat25Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat25Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay25Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay25Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay25Data.currentMonthExpectations, 2)/100))

	$sat26Data = Invoke-WebRequest 'http://127.0.0.1:14026/api/sno/satellites' | ConvertFrom-Json
	$SNO26data = Invoke-WebRequest 'http://127.0.0.1:14026/api/sno' | ConvertFrom-Json
	$pay26Data = Invoke-WebRequest 'http://127.0.0.1:14026/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO26`t      " ([math]::round($SNO26data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO26data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO26data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO26data.diskSpace.available/1000000000)) -(([math]::round($SNO26data.diskSpace.used/1000000000)) + ([math]::round($SNO26data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat26Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat26Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay26Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay26Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay26Data.currentMonthExpectations, 2)/100))

	$sat27Data = Invoke-WebRequest 'http://127.0.0.1:14027/api/sno/satellites' | ConvertFrom-Json
	$SNO27data = Invoke-WebRequest 'http://127.0.0.1:14027/api/sno' | ConvertFrom-Json
	$pay27Data = Invoke-WebRequest 'http://127.0.0.1:14027/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO27`t      " ([math]::round($SNO27data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO27data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO27data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO27data.diskSpace.available/1000000000)) -(([math]::round($SNO27data.diskSpace.used/1000000000)) + ([math]::round($SNO27data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat27Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat27Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay27Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay27Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay27Data.currentMonthExpectations, 2)/100))

	$sat28Data = Invoke-WebRequest 'http://127.0.0.1:14028/api/sno/satellites' | ConvertFrom-Json
	$SNO28data = Invoke-WebRequest 'http://127.0.0.1:14028/api/sno' | ConvertFrom-Json
	$pay28Data = Invoke-WebRequest 'http://127.0.0.1:14028/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO28`t      " ([math]::round($SNO28data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO28data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO28data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO28data.diskSpace.available/1000000000)) -(([math]::round($SNO28data.diskSpace.used/1000000000)) + ([math]::round($SNO28data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat28Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat28Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay28Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay28Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay28Data.currentMonthExpectations, 2)/100))

	$sat29Data = Invoke-WebRequest 'http://127.0.0.1:14029/api/sno/satellites' | ConvertFrom-Json
	$SNO29data = Invoke-WebRequest 'http://127.0.0.1:14029/api/sno' | ConvertFrom-Json
	$pay29Data = Invoke-WebRequest 'http://127.0.0.1:14029/api/sno/estimated-payout' | ConvertFrom-Json

	Write-Host "NODO29`t      " ([math]::round($SNO29data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO29data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO29data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO29data.diskSpace.available/1000000000)) -(([math]::round($SNO29data.diskSpace.used/1000000000)) + ([math]::round($SNO29data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat29Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat29Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay29Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay29Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay29Data.currentMonthExpectations, 2)/100))
	
	$sat30Data = Invoke-WebRequest 'http://127.0.0.1:14030/api/sno/satellites' | ConvertFrom-Json
    $SNO30data = Invoke-WebRequest 'http://127.0.0.1:14030/api/sno' | ConvertFrom-Json
    $pay30Data = Invoke-WebRequest 'http://127.0.0.1:14030/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO30`t      " ([math]::round($SNO30data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO30data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO30data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO30data.diskSpace.available/1000000000)) -(([math]::round($SNO30data.diskSpace.used/1000000000)) + ([math]::round($SNO30data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat30Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat30Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay30Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay30Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay30Data.currentMonthExpectations, 2)/100))

	$sat31Data = Invoke-WebRequest 'http://127.0.0.1:14031/api/sno/satellites' | ConvertFrom-Json
    $SNO31data = Invoke-WebRequest 'http://127.0.0.1:14031/api/sno' | ConvertFrom-Json
    $pay31Data = Invoke-WebRequest 'http://127.0.0.1:14031/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO31`t      " ([math]::round($SNO31data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO31data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO31data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO31data.diskSpace.available/1000000000)) -(([math]::round($SNO31data.diskSpace.used/1000000000)) + ([math]::round($SNO31data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat31Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat31Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay31Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay31Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay31Data.currentMonthExpectations, 2)/100))

    $sat34Data = Invoke-WebRequest 'http://127.0.0.1:14034/api/sno/satellites' | ConvertFrom-Json
    $SNO34data = Invoke-WebRequest 'http://127.0.0.1:14034/api/sno' | ConvertFrom-Json
    $pay34Data = Invoke-WebRequest 'http://127.0.0.1:14034/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO34`t      " ([math]::round($SNO34data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO34data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO34data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO34data.diskSpace.available/1000000000)) -(([math]::round($SNO34data.diskSpace.used/1000000000)) + ([math]::round($SNO34data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat34Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat34Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay34Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay34Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay34Data.currentMonthExpectations, 2)/100))

    $sat37Data = Invoke-WebRequest 'http://127.0.0.1:14037/api/sno/satellites' | ConvertFrom-Json
    $SNO37data = Invoke-WebRequest 'http://127.0.0.1:14037/api/sno' | ConvertFrom-Json
    $pay37Data = Invoke-WebRequest 'http://127.0.0.1:14037/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO37`t      " ([math]::round($SNO37data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO37data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO37data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO37data.diskSpace.available/1000000000)) -(([math]::round($SNO37data.diskSpace.used/1000000000)) + ([math]::round($SNO37data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat37Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat37Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay37Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay37Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay37Data.currentMonthExpectations, 2)/100))

    $sat38Data = Invoke-WebRequest 'http://127.0.0.1:14038/api/sno/satellites' | ConvertFrom-Json
    $SNO38data = Invoke-WebRequest 'http://127.0.0.1:14038/api/sno' | ConvertFrom-Json
    $pay38Data = Invoke-WebRequest 'http://127.0.0.1:14038/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO38`t      " ([math]::round($SNO38data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO38data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO38data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO38data.diskSpace.available/1000000000)) -(([math]::round($SNO38data.diskSpace.used/1000000000)) + ([math]::round($SNO38data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat38Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat38Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay38Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay38Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay38Data.currentMonthExpectations, 2)/100))

    $sat40Data = Invoke-WebRequest 'http://127.0.0.1:14040/api/sno/satellites' | ConvertFrom-Json
    $SNO40data = Invoke-WebRequest 'http://127.0.0.1:14040/api/sno' | ConvertFrom-Json
    $pay40Data = Invoke-WebRequest 'http://127.0.0.1:14040/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO40`t      " ([math]::round($SNO40data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO40data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO40data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO40data.diskSpace.available/1000000000)) -(([math]::round($SNO40data.diskSpace.used/1000000000)) + ([math]::round($SNO40data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat40Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat40Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay40Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay40Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay40Data.currentMonthExpectations, 2)/100))

	$sat41Data = Invoke-WebRequest 'http://127.0.0.1:14041/api/sno/satellites' | ConvertFrom-Json
    $SNO41data = Invoke-WebRequest 'http://127.0.0.1:14041/api/sno' | ConvertFrom-Json
    $pay41Data = Invoke-WebRequest 'http://127.0.0.1:14041/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO41`t      " ([math]::round($SNO41data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO41data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO41data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO41data.diskSpace.available/1000000000)) -(([math]::round($SNO41data.diskSpace.used/1000000000)) + ([math]::round($SNO41data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat41Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat41Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay41Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay41Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay41Data.currentMonthExpectations, 2)/100))
	
    $sat42Data = Invoke-WebRequest 'http://127.0.0.1:14042/api/sno/satellites' | ConvertFrom-Json
    $SNO42data = Invoke-WebRequest 'http://127.0.0.1:14042/api/sno' | ConvertFrom-Json
    $pay42Data = Invoke-WebRequest 'http://127.0.0.1:14042/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO42`t      " ([math]::round($SNO42data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO42data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO42data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO42data.diskSpace.available/1000000000)) -(([math]::round($SNO42data.diskSpace.used/1000000000)) + ([math]::round($SNO42data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat42Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat42Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay42Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay42Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay42Data.currentMonthExpectations, 2)/100))

    $sat43Data = Invoke-WebRequest 'http://127.0.0.1:14043/api/sno/satellites' | ConvertFrom-Json
    $SNO43data = Invoke-WebRequest 'http://127.0.0.1:14043/api/sno' | ConvertFrom-Json
    $pay43Data = Invoke-WebRequest 'http://127.0.0.1:14043/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO43`t      " ([math]::round($SNO43data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO43data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO43data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO43data.diskSpace.available/1000000000)) -(([math]::round($SNO43data.diskSpace.used/1000000000)) + ([math]::round($SNO43data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat43Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat43Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay43Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay43Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay43Data.currentMonthExpectations, 2)/100))

    $sat46Data = Invoke-WebRequest 'http://127.0.0.1:14046/api/sno/satellites' | ConvertFrom-Json
    $SNO46data = Invoke-WebRequest 'http://127.0.0.1:14046/api/sno' | ConvertFrom-Json
    $pay46Data = Invoke-WebRequest 'http://127.0.0.1:14046/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO46`t      " ([math]::round($SNO46data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO46data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO46data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO46data.diskSpace.available/1000000000)) -(([math]::round($SNO46data.diskSpace.used/1000000000)) + ([math]::round($SNO46data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat46Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat46Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay46Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay46Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay46Data.currentMonthExpectations, 2)/100))

    $sat47Data = Invoke-WebRequest 'http://127.0.0.1:14047/api/sno/satellites' | ConvertFrom-Json
    $SNO47data = Invoke-WebRequest 'http://127.0.0.1:14047/api/sno' | ConvertFrom-Json
    $pay47Data = Invoke-WebRequest 'http://127.0.0.1:14047/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO47`t      " ([math]::round($SNO47data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO47data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO47data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO47data.diskSpace.available/1000000000)) -(([math]::round($SNO47data.diskSpace.used/1000000000)) + ([math]::round($SNO47data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat47Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat47Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay47Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay47Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay47Data.currentMonthExpectations, 2)/100))

    $sat48Data = Invoke-WebRequest 'http://127.0.0.1:14048/api/sno/satellites' | ConvertFrom-Json
    $SNO48data = Invoke-WebRequest 'http://127.0.0.1:14048/api/sno' | ConvertFrom-Json
    $pay48Data = Invoke-WebRequest 'http://127.0.0.1:14048/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO48`t      " ([math]::round($SNO48data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO48data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO48data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO48data.diskSpace.available/1000000000)) -(([math]::round($SNO48data.diskSpace.used/1000000000)) + ([math]::round($SNO48data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat48Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat48Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay48Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay48Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay48Data.currentMonthExpectations, 2)/100))

    $sat49Data = Invoke-WebRequest 'http://127.0.0.1:14049/api/sno/satellites' | ConvertFrom-Json
    $SNO49data = Invoke-WebRequest 'http://127.0.0.1:14049/api/sno' | ConvertFrom-Json
    $pay49Data = Invoke-WebRequest 'http://127.0.0.1:14049/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO49`t      " ([math]::round($SNO49data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO49data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO49data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO49data.diskSpace.available/1000000000)) -(([math]::round($SNO49data.diskSpace.used/1000000000)) + ([math]::round($SNO49data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat49Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat49Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay49Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay49Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay49Data.currentMonthExpectations, 2)/100))

    $sat50Data = Invoke-WebRequest 'http://127.0.0.1:14050/api/sno/satellites' | ConvertFrom-Json
    $SNO50data = Invoke-WebRequest 'http://127.0.0.1:14050/api/sno' | ConvertFrom-Json
    $pay50Data = Invoke-WebRequest 'http://127.0.0.1:14050/api/sno/estimated-payout' | ConvertFrom-Json

    Write-Host "NODO50`t      " ([math]::round($SNO50data.diskSpace.used/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO50data.diskSpace.available/1000000000)) "`t"-NoNewline
    Write-Host ([math]::round($SNO50data.diskSpace.trash/1000000000)) "`t"-NoNewline
    Write-Host (([math]::round($SNO50data.diskSpace.available/1000000000)) -(([math]::round($SNO50data.diskSpace.used/1000000000)) + ([math]::round($SNO50data.diskSpace.trash/1000000000))) )"`t"-NoNewline
    Write-Host ([math]::round($sat50Data.egressSummary/1000000000))"`t"-NoNewline
    Write-Host ([math]::Round($sat50Data.ingressSummary/1000000000))"`t|   "-NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay50Data.currentMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay50Data.previousMonth.payout, 2)/100)) "`t|   " -NoNewline
    Write-Host ('{0:0.##}' -f ([math]::Round($pay50Data.currentMonthExpectations, 2)/100))

    Write-Host "______________________________________________________________________________________________________________"
	Write-Host "TOTAL (GB)     Used`tTotal`tTrash`tAvail`tEgress`tIngress`t| $ Current`t| $ Previous`t| $ Expected " -ForegroundColor Cyan
    
    #USED SPACE
    Write-Host "`t    "([math]::round((($SNO50data.diskSpace.used+$SNO49data.diskSpace.used+$SNO48data.diskSpace.used+$SNO47data.diskSpace.used+
    $SNO46data.diskSpace.used+$SNO43data.diskSpace.used+$SNO42data.diskSpace.used+$SNO41data.diskSpace.used+$SNO40data.diskSpace.used+
    $SNO38data.diskSpace.used+$SNO37data.diskSpace.used+$SNO34data.diskSpace.used+$SNO31data.diskSpace.used+$SNO30data.diskSpace.used+
    $SNO29data.diskSpace.used+$SNO28data.diskSpace.used+$SNO27data.diskSpace.used+$SNO26data.diskSpace.used+$SNO25data.diskSpace.used+
    $SNO22data.diskSpace.used+$SNO19data.diskSpace.used+$SNO18data.diskSpace.used+$SNO17data.diskSpace.used+$SNO14data.diskSpace.used+
    $SNO13data.diskSpace.used+$SNO12data.diskSpace.used+$SNO11data.diskSpace.used+$SNO10data.diskSpace.used+$SNO9data.diskSpace.used+
    $SNO8data.diskSpace.used+$SNO7data.diskSpace.used+$SNO6data.diskSpace.used+$SNO5data.diskSpace.used+$SNO4data.diskSpace.used+
    $SNO3data.diskSpace.used+$SNO2data.diskSpace.used+$SNO1data.diskSpace.used))/1000000000)) -NoNewline
    
    #TOTAL SPACE
    Write-Host "   "([math]::round((($SNO50data.diskSpace.available+$SNO49data.diskSpace.available+$SNO48data.diskSpace.available+$SNO47data.diskSpace.available+
    $SNO46data.diskSpace.available+$SNO43data.diskSpace.available+$SNO42data.diskSpace.available+$SNO41data.diskSpace.available+$SNO40data.diskSpace.available+
    $SNO38data.diskSpace.available+$SNO37data.diskSpace.available+$SNO34data.diskSpace.available+$SNO31data.diskSpace.available+$SNO30data.diskSpace.available+
    $SNO29data.diskSpace.available+$SNO28data.diskSpace.available+$SNO27data.diskSpace.available+$SNO26data.diskSpace.available+$SNO25data.diskSpace.available+
    $SNO22data.diskSpace.available+$SNO19data.diskSpace.available+$SNO18data.diskSpace.available+$SNO17data.diskSpace.available+$SNO14data.diskSpace.available+
    $SNO13data.diskSpace.available+$SNO12data.diskSpace.available+$SNO11data.diskSpace.available+$SNO10data.diskSpace.available+$SNO9data.diskSpace.available+
    $SNO8data.diskSpace.available+ $SNO7data.diskSpace.available+$SNO6data.diskSpace.available+$SNO5data.diskSpace.available+$SNO4data.diskSpace.available+
    $SNO3data.diskSpace.available+$SNO2data.diskSpace.available+$SNO1data.diskSpace.available))/1000000000)) -NoNewline
    
    #TOTAL SPACE
    Write-Host "`t"([math]::round((($SNO50data.diskSpace.trash+$SNO49data.diskSpace.trash+$SNO48data.diskSpace.trash+$SNO47data.diskSpace.trash+
    $SNO46data.diskSpace.trash+$SNO43data.diskSpace.trash+$SNO42data.diskSpace.trash+$SNO41data.diskSpace.trash+$SNO40data.diskSpace.trash+
    $SNO38data.diskSpace.trash+$SNO37data.diskSpace.trash+$SNO34data.diskSpace.trash+$SNO31data.diskSpace.trash+$SNO30data.diskSpace.trash+
    $SNO29data.diskSpace.trash+$SNO28data.diskSpace.trash+$SNO27data.diskSpace.trash+$SNO26data.diskSpace.trash+$SNO25data.diskSpace.trash+
    $SNO22data.diskSpace.trash+$SNO19data.diskSpace.trash+$SNO18data.diskSpace.trash+$SNO17data.diskSpace.trash+$SNO14data.diskSpace.trash+
    $SNO13data.diskSpace.trash+$SNO12data.diskSpace.trash+$SNO11data.diskSpace.trash+$SNO10data.diskSpace.trash+$SNO9data.diskSpace.trash+
    $SNO8data.diskSpace.trash+$SNO7data.diskSpace.trash+$SNO6data.diskSpace.trash+$SNO5data.diskSpace.trash+$SNO4data.diskSpace.trash+
    $SNO3data.diskSpace.trash+$SNO2data.diskSpace.trash+$SNO1data.diskSpace.trash))/1000000000)) -NoNewline
    
    #TOTAL AVAILABLE SPACE
    Write-Host "  "([long]((($SNO50data.diskSpace.available+$SNO49data.diskSpace.available+$SNO48data.diskSpace.available+$SNO47data.diskSpace.available+
    $SNO46data.diskSpace.available+$SNO43data.diskSpace.available+$SNO42data.diskSpace.available+$SNO41data.diskSpace.available+$SNO40data.diskSpace.available+
    $SNO38data.diskSpace.available+$SNO37data.diskSpace.available+$SNO34data.diskSpace.available+$SNO31data.diskSpace.available+$SNO30data.diskSpace.available+
    $SNO29data.diskSpace.available+$SNO28data.diskSpace.available+$SNO27data.diskSpace.available+$SNO26data.diskSpace.available+$SNO25data.diskSpace.available+
    $SNO22data.diskSpace.available+$SNO19data.diskSpace.available+$SNO18data.diskSpace.available+$SNO17data.diskSpace.available+$SNO14data.diskSpace.available+
    $SNO13data.diskSpace.available+$SNO12data.diskSpace.available+$SNO11data.diskSpace.available+$SNO10data.diskSpace.available+$SNO9data.diskSpace.available+
    $SNO8data.diskSpace.available+$SNO7data.diskSpace.available+$SNO6data.diskSpace.available+$SNO5data.diskSpace.available+$SN48data.diskSpace.available+
    $SNO3data.diskSpace.available+$SNO2data.diskSpace.available+$SNO1data.diskSpace.available)/1000000000) -
    
    ((($SNO50data.diskSpace.used+$SNO49data.diskSpace.used+$SNO48data.diskSpace.used+$SNO47data.diskSpace.used+
    $SNO38data.diskSpace.used+$SNO37data.diskSpace.used+$SNO34data.diskSpace.used+$SNO31data.diskSpace.used+$SNO30data.diskSpace.used+
    $SNO29data.diskSpace.used+$SNO28data.diskSpace.used+$SNO27data.diskSpace.used+$SNO26data.diskSpace.used+$SNO25data.diskSpace.used+
    $SNO22data.diskSpace.used+$SNO19data.diskSpace.used+$SNO18data.diskSpace.used+$SNO17data.diskSpace.used+$SNO14data.diskSpace.used+
    $SNO13data.diskSpace.used+$SNO12data.diskSpace.used+$SNO11data.diskSpace.used+$SNO10data.diskSpace.used+$SNO9data.diskSpace.used+
    $SNO8data.diskSpace.used+$SNO7data.diskSpace.used+$SNO6data.diskSpace.used+$SNO5data.diskSpace.used+$SNO4data.diskSpace.used+
    $SNO3data.diskSpace.used+$SNO2data.diskSpace.used+$SNO1data.diskSpace.used)/1000000000) +

    (($SNO50data.diskSpace.trash+$SNO49data.diskSpace.trash+$SNO48data.diskSpace.trash+$SNO47data.diskSpace.trash+
    $SNO46data.diskSpace.trash+$SNO43data.diskSpace.trash+$SNO42data.diskSpace.trash+$SNO41data.diskSpace.trash+$SNO40data.diskSpace.trash+
    $SNO38data.diskSpace.trash+$SNO37data.diskSpace.trash+$SNO34data.diskSpace.trash+$SNO31data.diskSpace.trash+$SNO30data.diskSpace.trash+
    $SNO29data.diskSpace.trash+$SNO28data.diskSpace.trash+$SNO27data.diskSpace.trash+$SNO26data.diskSpace.trash+$SNO25data.diskSpace.trash+
    $SNO22data.diskSpace.trash+$SNO19data.diskSpace.trash+$SNO18data.diskSpace.trash+$SNO17data.diskSpace.trash+$SNO14data.diskSpace.trash+
    $SNO13data.diskSpace.trash+$SNO12data.diskSpace.trash+$SNO11data.diskSpace.trash+$SNO10data.diskSpace.trash+$SNO9data.diskSpace.trash+
    $SNO8data.diskSpace.trash+$SNO7data.diskSpace.trash+$SNO6data.diskSpace.trash+$SNO5data.diskSpace.trash+$SNO4data.diskSpace.trash+
    $SNO3data.diskSpace.trash+$SNO2data.diskSpace.trash+$SNO1data.diskSpace.trash)/1000000000)))) -NoNewline
    #TOTAL EGRESS
    Write-Host "   "([math]::round(($sat50Data.egressSummary+$sat49Data.egressSummary+$sat48Data.egressSummary+$sat47Data.egressSummary+
    $sat46Data.egressSummary+$sat43Data.egressSummary+$sat42Data.egressSummary+$sat41Data.egressSummary+$sat40Data.egressSummary+
    $sat38Data.egressSummary+$sat37Data.egressSummary+$sat34Data.egressSummary+$sat31Data.egressSummary+$sat30Data.egressSummary+
    $sat29Data.egressSummary+$sat28Data.egressSummary+$sat27Data.egressSummary+$sat26Data.egressSummary+$sat25Data.egressSummary+
    $sat22Data.egressSummary+$sat19Data.egressSummary+$sat18Data.egressSummary+$sat17Data.egressSummary+$sat14Data.egressSummary+
    $sat13Data.egressSummary+$sat12Data.egressSummary+$sat11Data.egressSummary+$sat10Data.egressSummary+$sat9Data.egressSummary+
    $sat8Data.egressSummary+$sat7Data.egressSummary+$sat6Data.egressSummary+$sat5Data.egressSummary+$sat4Data.egressSummary+
    $sat3Data.egressSummary+$sat2Data.egressSummary+$sat1Data.egressSummary)/1000000000))-NoNewline
    #TOTAL INGRESS
    Write-Host "   "([math]::round(($sat50Data.ingressSummary+$sat49Data.ingressSummary+$sat48Data.ingressSummary+$sat47Data.ingressSummary+
    $sat46Data.ingressSummary+$sat43Data.ingressSummary+$sat42Data.ingressSummary+$sat41Data.ingressSummary+$sat40Data.ingressSummary+
    $sat38Data.ingressSummary+$sat37Data.ingressSummary+$sat34Data.ingressSummary+$sat31Data.ingressSummary+$sat30Data.ingressSummary+
    $sat29Data.ingressSummary+$sat28Data.ingressSummary+$sat27Data.ingressSummary+$sat26Data.ingressSummary+$sat25Data.ingressSummary+
    $sat22Data.ingressSummary+$sat19Data.ingressSummary+$sat18Data.ingressSummary+$sat17Data.ingressSummary+$sat14Data.ingressSummary+
    $sat13Data.ingressSummary+$sat12Data.ingressSummary+$sat11Data.ingressSummary+$sat10Data.ingressSummary+$sat9Data.ingressSummary+
    $sat8Data.ingressSummary+$sat7Data.ingressSummary+$sat6Data.ingressSummary+$sat5Data.ingressSummary+$sat4Data.ingressSummary+
    $sat3Data.ingressSummary+$sat2Data.ingressSummary+$sat1Data.ingressSummary)/1000000000))-NoNewline

    #TOTAL CURRENT PAYOUT
    Write-Host "`t    " ([math]::round(($pay50Data.currentMonth.payout+$pay49Data.currentMonth.payout+$pay48Data.currentMonth.payout+$pay47Data.currentMonth.payout+
    $pay46Data.currentMonth.payout+$pay43Data.currentMonth.payout+$pay42Data.currentMonth.payout+$pay41Data.currentMonth.payout+$pay40Data.currentMonth.payout+
    $pay38Data.currentMonth.payout+$pay37Data.currentMonth.payout+$pay34Data.currentMonth.payout+$pay31Data.currentMonth.payout+$pay30Data.currentMonth.payout+
    $pay29Data.currentMonth.payout+$pay28Data.currentMonth.payout+$pay27Data.currentMonth.payout+$pay26Data.currentMonth.payout+$pay25Data.currentMonth.payout+
    $pay22Data.currentMonth.payout+$pay19Data.currentMonth.payout+$pay18Data.currentMonth.payout+$pay17Data.currentMonth.payout+$pay14Data.currentMonth.payout+
    $pay13Data.currentMonth.payout+$pay12Data.currentMonth.payout+$pay11Data.currentMonth.payout+$pay10Data.currentMonth.payout+$pay9Data.currentMonth.payout+
    $pay8Data.currentMonth.payout+$pay7Data.currentMonth.payout+$pay6Data.currentMonth.payout+$pay5Data.currentMonth.payout+$pay4Data.currentMonth.payout+
    $pay3Data.currentMonth.payout+$pay2Data.currentMonth.payout+$pay1Data.currentMonth.payout)/100)) -NoNewline

    #TOTAL PREVIOUS
    Write-Host "`t    " ([math]::round(($pay50Data.previousMonth.payout+$pay49Data.previousMonth.payout+$pay48Data.previousMonth.payout+$pay47Data.previousMonth.payout+
    $pay46Data.previousMonth.payout+$pay43Data.previousMonth.payout+$pay42Data.previousMonth.payout+$pay41Data.previousMonth.payout+$pay40Data.previousMonth.payout+
    $pay38Data.previousMonth.payout+$pay37Data.previousMonth.payout+$pay34Data.previousMonth.payout+$pay31Data.previousMonth.payout+$pay30Data.previousMonth.payout+
    $pay29Data.previousMonth.payout+$pay28Data.previousMonth.payout+$pay27Data.previousMonth.payout+$pay26Data.previousMonth.payout+$pay25Data.previousMonth.payout+
    $pay22Data.previousMonth.payout+$pay19Data.previousMonth.payout+$pay18Data.previousMonth.payout+$pay17Data.previousMonth.payout+$pay14Data.previousMonth.payout+
    $pay13Data.previousMonth.payout+$pay12Data.previousMonth.payout+$pay11Data.previousMonth.payout+$pay10Data.previousMonth.payout+$pay9Data.previousMonth.payout+
    $pay8Data.previousMonth.payout+$pay7Data.previousMonth.payout+$pay6Data.previousMonth.payout+$pay5Data.previousMonth.payout+$pay4Data.previousMonth.payout+
    $pay3Data.previousMonth.payout+$pay2Data.previousMonth.payout+$pay1Data.previousMonth.payout)/100)) -NoNewline

    #TOTAL EXPECTED
    Write-Host "`t    " ([math]::round(($pay50Data.currentMonthExpectations+$pay49Data.currentMonthExpectations+$pay48Data.currentMonthExpectations+
    $pay47Data.currentMonthExpectations+$pay46Data.currentMonthExpectations+$pay43Data.currentMonthExpectations+$pay42Data.currentMonthExpectations+
    $pay41Data.currentMonthExpectations+$pay40Data.currentMonthExpectations+$pay38Data.currentMonthExpectations+$pay37Data.currentMonthExpectations+
    $pay34Data.currentMonthExpectations+$pay31Data.currentMonthExpectations+$pay30Data.currentMonthExpectations+$pay29Data.currentMonthExpectations+
    $pay28Data.currentMonthExpectations+$pay27Data.currentMonthExpectations+$pay26Data.currentMonthExpectations+$pay25Data.currentMonthExpectations+
    $pay22Data.currentMonthExpectations+$pay19Data.currentMonthExpectations+$pay18Data.currentMonthExpectations+$pay17Data.currentMonthExpectations+
    $pay14Data.currentMonthExpectations+$pay13Data.currentMonthExpectations+$pay12Data.currentMonthExpectations+$pay11Data.currentMonthExpectations+
    $pay10Data.currentMonthExpectations+$pay9Data.currentMonthExpectations+$pay8Data.currentMonthExpectations+$pay7Data.currentMonthExpectations+
    $pay6Data.currentMonthExpectations+$pay5Data.currentMonthExpectations+$pay4Data.currentMonthExpectations+$pay3Data.currentMonthExpectations+
    $pay2Data.currentMonthExpectations+$pay1Data.currentMonthExpectations)/100))



	Write-Host ""
	Write-Host ""
	Write-Host ""
	Write-Host ""
	Write-Host ""
	Write-Host "Refresh every minute"
	
	Start-Sleep -Seconds 60


}while ($true)


	
