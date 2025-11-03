#
scoreboard players operation @s attackerdata = @n[tag=weapon18playertmp] playerdata

#音と視覚効果
execute at @s run playsound minecraft:item.mace.smash_ground_heavy player @a ~ ~ ~ 2 0
execute at @s run particle dust{color:16711680,scale:2} ~ ~1 ~ 0.5 1 0.5 0 50 normal

#damage種類
tag @s add physicaldamage
tag @s add meleedamage
#damage量
scoreboard players set @s damagetaken 70
#視線の値に応じてダメージ増加
function effects:system/pick/ {id:48}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
scoreboard players operation $tmp tmp *= $10 main
scoreboard players operation @s damagetaken += $tmp tmp
scoreboard players reset $tmp tmp
#
data modify storage atktrigger: hage set value {itemtype:weapon,id:18,atktype:1}
#attackercheck
function damage:atkercheck