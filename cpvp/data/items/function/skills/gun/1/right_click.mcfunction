#bullet
execute unless score @s handgun matches 1.. run function items:skills/gun/bulletless
execute unless score @s handgun matches 1.. run return fail
#ct
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1 run function items:skills/gun/1/shot
scoreboard players reset $check main
#used
scoreboard players set @s carrotuse 0