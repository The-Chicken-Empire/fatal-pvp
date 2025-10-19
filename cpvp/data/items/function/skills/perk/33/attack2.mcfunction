scoreboard players operation $perk33tmp tmp = @e[tag=victim,limit=1] hp
scoreboard players operation $perk33tmp tmp *= $10 main
scoreboard players operation $perk33tmp tmp2 = @e[tag=victim,limit=1] maxhp
scoreboard players operation $perk33tmp tmp2 *= $7 main
execute unless score $perk33tmp tmp > $perk33tmp tmp2 run return run scoreboard players reset $perk33tmp

scoreboard players reset $perk33tmp
scoreboard players add $damageadd damagecalc 30
execute if score @s absorption matches 180..199 run scoreboard players set @s absorption 200
execute if score @s absorption matches 0..179 run scoreboard players add @s absorption 20

execute as @e[tag=victim] at @s run playsound entity.breeze.hurt hostile @a ~ ~ ~ 1 2 0
execute at @s run particle enchanted_hit ~ ~1 ~ 0.2 0.5 0.2 0 20