#弾数減少
scoreboard players remove @s handgun 1
#active

#sound
execute at @s run playsound entity.zombie.attack_wooden_door player @s ~ ~ ~ 1 2 0
#弾数
execute if score @s handgun matches 1.. run function items:skills/gun/1/namechange
execute unless score @s handgun matches 1.. run function items:skills/gun/1/0bullet