function effects:system/operation/please with entity @s

$execute if data storage effect: tmp[{id:$(id)}] run function effects:system/remove/remove2 with storage effect: q[0]

function effects:system/operation/return with entity @s

data remove storage effect: q[0]
function effects:q/s