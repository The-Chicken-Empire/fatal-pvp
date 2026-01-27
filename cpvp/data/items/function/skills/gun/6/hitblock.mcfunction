data modify storage cpvp:range6 owner set from entity @s Owner
function items:skills/gun/6/getowner with storage cpvp:range6
data remove storage cpvp:range6 owner
execute as @a[tag=range6tmp] run function items:skills/gun/6/fail
tag @a[tag=range6tmp] remove range6tmp
kill @s