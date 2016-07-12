Param(
	[string]$task,
	[string]$buildNumber = 0,
	[bool]$runPersistenceTests = $false)

if($task -eq $null) {
	$task = read-host "Enter Task"
}

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.path)

. .\build\psake.ps1 -scriptPath $scriptPath -t $task -properties @{ build_number=$buildNumber;runPersistenceTests=$runPersistenceTests }
