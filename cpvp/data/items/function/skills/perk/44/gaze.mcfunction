#デバフ
function effects:modify {id:48,duration:-1,level:4}

#音と視覚効果
execute as @s run function effects:system/pick/ {id:48}
execute store result score $tmp tmp run data get storage effect: targeteffect.level

execute if score $tmp tmp matches 4.. run function effects:system/gain/ {id:18,duration:400,level:1}

execute if score $tmp tmp matches ..2 run particle minecraft:dust{color:[1,1,0],scale:2} ^ ^1.8 ^0.5 0.5 0.5 0.5 10 20 force @s
execute if score $tmp tmp matches ..2 as @n[tag=perk44tmp] run particle minecraft:dust{color:[1,1,0],scale:2} ~ ~1 ~ 0.5 0.5 0.5 10 20 force @s

execute if score $tmp tmp matches 3.. run particle minecraft:dust{color:16711680,scale:2} ^ ^1.8 ^0.5 0.5 0.5 0.5 10 20 force @s
execute if score $tmp tmp matches 3.. as @n[tag=perk44tmp] run particle minecraft:dust{color:16711680,scale:2} ~ ~1 ~ 0.5 0.5 0.5 10 20 force @s

playsound minecraft:entity.sheep.shear neutral @s ~ ~ ~ 2 2
execute as @n[tag=perk44tmp] at @s run playsound minecraft:entity.sheep.shear neutral @s ~ ~ ~ 2 2
execute if score $tmp tmp matches 3.. as @n[tag=perk44tmp] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.7
execute if score $tmp tmp matches 3.. run playsound minecraft:entity.guardian.attack player @s ~ ~ ~ 1 1
execute if score $tmp tmp matches 3.. run function effects:system/gain/ {id:18,duration:400,level:1}

scoreboard players reset $tmp tmp


#デバフ
function effects:modify {id:48,duration:-1,level:4}