function items:skills/gun/arrow/ with storage cpvp:arrowtype

execute if entity @s[type=player] run return run function items:skills/gun/arrow/player
execute if entity @s[type=!player] run return run function items:skills/gun/arrow/entity


tag @e[tag=arrowattackertmp] remove arrowattackertmp