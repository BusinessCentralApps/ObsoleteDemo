Param(
    [Hashtable]$parameters
)

$parameters.vsixFile = Get-LatestAlLanguageExtensionUrl
New-BcContainer @parameters
Invoke-ScriptInBcContainer -containerName $parameters.ContainerName -scriptblock { $progressPreference = 'SilentlyContinue' }
