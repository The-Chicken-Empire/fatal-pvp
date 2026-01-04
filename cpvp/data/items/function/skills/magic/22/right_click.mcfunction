tag @s add magic22tmp
execute at @s anchored eyes positioned ^ ^ ^ summon marker run function items:skills/magic/22/summonmarker
execute unless entity @e[tag=magic22hittmp] run return run tag @s remove magic22tmp
#check
scoreboard players set @s mpcost 2000
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1 run function items:skills/magic/22/active
#つかったよ！
scoreboard players reset $check main
scoreboard players set @s carrotuse 0