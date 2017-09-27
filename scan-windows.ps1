# get ipv4 range of connected network
function Get-NetworkRange {
    $ipconfig = ipconfig
    $ipv4 = $ipconfig | Select-String -Pattern 'IPv4 Address' | ForEach-Object { $_.Line.Split(':')[1].Trim() }
    if ($ipv4 -match '\d+\.\d+\.\d+\.\d+') {
        $networkRange = $ipv4 -replace '\.\d+$','.0/24'
        return $networkRange
    } else {
        Write-Host "network range not defined."
        exit 1
    }
}

# scan network for ipv4 addresses in range
function Scan-Network {
    $networkRange = Get-NetworkRange
    if (-not $networkRange) {
        Write-Host "network range not defined."
        exit 1
    }

    Write-Host "scanning network: $networkRange"
    $nmapOutput = nmap -sn $networkRange | Select-String -Pattern 'Nmap scan report for' | ForEach-Object { $_.Line.Split(' ')[4].Trim() }
    $nmapOutput
}

# script execution
Write-Host "locating ip addresses connected to the network..."
Scan-Network