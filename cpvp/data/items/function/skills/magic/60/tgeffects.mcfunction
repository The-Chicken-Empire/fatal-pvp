$scoreboard players set $tmp3 tmp $(count)

execute if score $tmp3 tmp matches 1.. run function items:skills/magic/60/1 with storage cpvp:magic60
execute if score $tmp3 tmp matches 0 run data modify storage cpvp:magic60 tgeffect set value 0
scoreboard players reset $tmp3 tmp