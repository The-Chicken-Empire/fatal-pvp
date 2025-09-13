execute unless predicate items:sneak run return fail

data modify storage cpvp:system unfail set value {unfail:1b}
data modify storage cpvp:system skillslot set value {slot:"boots"}
scoreboard players set @s mpcost 1200
execute store result score $check main run function items:skills/allcheck
execute if score $check main matches 0 run return run scoreboard players reset $check main
scoreboard players reset $check main

tag @s add boots5tmp

execute if entity @e[tag=boots5marker] as @e[tag=boots5marker] if score @s target = @a[tag=boots5tmp,limit=1] playerdata run return run tag @a[tag=boots5tmp] remove boots5tmp

function items:skills/boots/5/active