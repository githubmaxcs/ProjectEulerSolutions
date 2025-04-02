function P1{
    <#
    .SYNOPSIS
    P1 will return the sum of the multiples of two numbers less than a certain limit.

    .DESCRIPTION
    Given two positive integers in $Numbers, P1 will sum the multiples of the two numbers less than the $Limit, where $Limit is a positive integer. If $Limit is less than each individual number in $Numbers, P1 will return 0.

    .PARAMETER $Numbers
    An array of two numbers.

    .PARAMETER $Limit
    The upper bound (not inclusive) for summing multiples of numbers in $Numbers.

    .EXAMPLE
    P1 -Numbers 3,5 -Limit 1000
    $Limit has a default value of 1000.

    .OUTPUTS
    P1 will return an Int32.
    #>
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
        if (($i % $Numbers[0] -eq 0) -or ($i % $Numbers[1] -eq 0)) {$Sum += $i}
        $i ++
    }
    return $Sum
}
