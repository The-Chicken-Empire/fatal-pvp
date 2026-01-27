scoreboard players set $tmp tmp 0
execute at @s if entity @e[tag=victim,distance=5..] run scoreboard players add $tmp tmp 5
execute at @s if entity @e[tag=victim,distance=10..] run scoreboard players add $tmp tmp 5
execute at @s if entity @e[tag=victim,distance=15..] run scoreboard players add $tmp tmp 5
execute at @s if entity @e[tag=victim,distance=20..] run scoreboard players add $tmp tmp 5
execute at @s if entity @e[tag=victim,distance=25..] run scoreboard players add $tmp tmp 5
execute at @s if entity @e[tag=victim,distance=30..] run scoreboard players add $tmp tmp 5
execute at @s if entity @e[tag=victim,distance=35..] run scoreboard players add $tmp tmp 5
execute at @s if entity @e[tag=victim,distance=40..] run scoreboard players add $tmp tmp 5
execute at @s if entity @e[tag=victim,distance=45..] run scoreboard players add $tmp tmp 5
execute at @s if entity @e[tag=victim,distance=50..] run scoreboard players add $tmp tmp 5
scoreboard players operation $damageadd damagecalc += $tmp tmp 
execute if entity @e[tag=victim,nbt={OnGround:0b}] run scoreboard players add $damageadd damagecalc 20
execute if entity @e[tag=victim,nbt={OnGround:0b}] as @e[tag=victim,nbt={OnGround:0b}] at @s run playsound entity.wither.break_block hostile @s ~ ~ ~ 1 1.1 1
execute if entity @e[tag=victim,distance=30..] as @e[tag=victim,distance=30..] at @s run playsound entity.wither_skeleton.hurt hostile @s ~ ~ ~ 1 1.3 1
scoreboard players reset $tmp tmp