#デバフ
function effects:system/gain/ {id:18,duration:140,level:1}
function effects:modify {id:48,duration:-1,level:1}
#秒数リセット
scoreboard players reset @s perk44tick

#音と視覚効果
execute as @s run function effects:system/pick/ {id:48}
execute store result score $tmp tmp run data get storage effect: targeteffect.level

execute if score $tmp tmp matches ..6 run particle minecraft:dust{color:[1,1,0],scale:2} ^ ^1.8 ^0.5 0.5 0.5 0.5 10 20 force @s
execute if score $tmp tmp matches ..6 as @n[tag=perk44tmp] run particle minecraft:dust{color:[1,1,0],scale:2} ~ ~1 ~ 0.5 0.5 0.5 10 20 force @s

execute if score $tmp tmp matches 7.. run particle minecraft:dust{color:16711680,scale:2} ^ ^1.8 ^0.5 0.5 0.5 0.5 10 20 force @s
execute if score $tmp tmp matches 7.. as @n[tag=perk44tmp] run particle minecraft:dust{color:16711680,scale:2} ~ ~1 ~ 0.5 0.5 0.5 10 20 force @s

playsound minecraft:entity.sheep.shear neutral @s ~ ~ ~ 2 2
execute as @n[tag=perk44tmp] at @s run playsound minecraft:entity.sheep.shear neutral @s ~ ~ ~ 2 2
execute if score $tmp tmp matches 7.. as @n[tag=perk44tmp] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.7

scoreboard players reset $tmp tmp