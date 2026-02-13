execute unless score @s eng matches 10.. run return run function items:skills/magic/41/neeng

#check
scoreboard players set @s mpcost 2400
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute unless score $check main matches 1 run return run scoreboard players reset $check main

tag @s add magic41tmp

execute as @e[tag=magic41cord] if score @s owner = @a[tag=magic41tmp,limit=1] playerdata run tag @s add m41calling
execute as @e[tag=magic41cord] if score @s owner = @a[tag=magic41tmp,limit=1] playerdata at @s run playsound block.beacon.power_select block @a ~ ~ ~ 1 1.5 0
execute at @s run playsound block.beacon.power_select block @a ~ ~ ~ 1 0.5 0
execute at @s run particle electric_spark ~ ~1 ~ 0.2 0.4 0.2 0.3 30
execute at @s summon marker run function items:skills/magic/41/summonmarker

scoreboard players set $ct main 600
function api:ct/mainhand
tag @s remove magic41tmp