function P1{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [ValidateCount(2,2)]
        [int[]]$Numbers,

        [Parameter(Mandatory = $false)]
        [int]$Limit = 1000
    )
    $Sum = 0
    $i = 1
    while ($i -lt $Limit) {
        if ($i % $Numbers[0] -eq 0) {$Sum += $i}
        elseif ($i % $Numbers[1] -eq 0) {$sum += $i}
        $i ++
    }
    return $Sum
}
