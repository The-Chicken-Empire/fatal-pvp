#
scoreboard players operation @s attackerdata = @n[tag=m47caster.tmp] playerdata

#音と視覚効果
execute at @s run playsound minecraft:item.mace.smash_ground_heavy player @a ~ ~ ~ 2 2
execute at @s run particle explosion ~ ~0.6 ~ 0.3 0.3 0.3 3 3 force @a

#ヒット効果
execute as @n[tag=m47caster.tmp] at @s run tp @s @s
execute as @n[tag=m47caster.tmp] at @s run tp @s ^ ^ ^-0.2
#execute store result score $tmp tmp run data get entity @n[tag=m47caster.tmp] Rotation[0] 10000
#scoreboard players add $tmp tmp 1800000
#execute store result entity @n[tag=m47mark.tmp] Rotation[0] float 0.0001 run scoreboard players get $tmp tmp
#scoreboard players reset $tmp tmp
execute as @n[tag=m47caster.tmp] at @s run function api:motion/rotation_usiro {power:8}
kill @n[tag=m47mark.tmp]

execute as @n[tag=m47caster.tmp] run function items:skills/magic/47/removetag

#damage種類
tag @s add magicdamage
tag @s add meleedamage
#damage量
scoreboard players set @s damagetaken 140
#
data modify storage atktrigger: hage set value {itemtype:magic,id:47,atktype:1}
#attackercheck
function damage:atkercheck