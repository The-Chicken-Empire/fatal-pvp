data modify storage cpvp:range5 owner set from entity @s Owner
function items:skills/gun/5/getowner with storage cpvp:range5
data remove storage cpvp:range5 owner

execute as @a[tag=range5tmp] run function items:skills/gun/5/clock

