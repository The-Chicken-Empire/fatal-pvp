scoreboard players add $tmp perk28 1

scoreboard players set $tmp random 0
execute store result score $tmp random run random value 1..100
execute if score $tmp random matches 31.. run return run scoreboard players reset $tmp random

execute as @e[tag=victim] at @s run playsound entity.warden.hurt hostile @s ~ ~ ~ 1 1 1
execute as @e[tag=atker] at @s run playsound entity.warden.attack_impact hostile @s ~ ~ ~ 1 1 1
tellraw @a[tag=atker,limit=1] [{"text":"[シンドリオン] ","color":"dark_aqua","italic":false},{"text":"追撃が発動した！","color":"white","italic":false}]
execute as @e[tag=victim] run scoreboard players operation @s damagepoint = $tmp getdamage
data modify storage atktrigger: hage set value {itemtype:perk,id:28,atktype:1}
execute as @e[tag=victim] run function damage:damage