param($prefix, $dns)
$i=1
DO {
    $lookup=(Resolve-DnsName -DnsOnly "$prefix.$i" -Server $dns -ErrorAction Ignore).NameHost
    if($lookup -ne $null){
        Write-Output "$prefix.$i, $lookup"
    } 
    $i++
}While($i -le 254)
