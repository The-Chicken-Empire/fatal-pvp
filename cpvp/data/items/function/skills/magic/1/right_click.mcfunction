tag @s add magic1tmp
execute at @s anchored eyes positioned ^ ^ ^ summon marker run function items:skills/magic/1/summonmarker
execute unless entity @e[tag=pointed,tag=magic1point] run return run function items:skills/magic/1/fail
tag @s remove magic1tmp
#check
scoreboard players set @s mpcost 1100
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 0 run kill @e[tag=magic1point]
execute if score $check main matches 1 run function items:skills/magic/1/active
#つかったよ！
scoreboard players reset $check main
scoreboard players set @s carrotuse 0