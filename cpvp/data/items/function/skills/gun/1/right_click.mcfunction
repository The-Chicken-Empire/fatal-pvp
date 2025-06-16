#bullet
execute unless score @s handgun matches 1.. run function items:skills/gun/bulletless
execute unless score @s handgun matches 1.. run return fail
#ct
execute store result score $check main run function system:cooltime/general/check_ct_mainhand
execute unless score $check main matches 1 run function system:cooltime/general/ct_fail
execute if score $check main matches 1 run function items:skills/gun/1/shot
scoreboard players set $check main 0
#used
scoreboard players set @s carrotuse 0