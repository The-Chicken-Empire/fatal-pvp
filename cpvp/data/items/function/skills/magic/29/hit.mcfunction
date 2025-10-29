#
scoreboard players operation @s attackerdata = @e[tag=m29display.tmp,limit=1] owner
#hitクールダウン
scoreboard players set @s magic29hitct 20
#スロウのエフェクト
function effects:system/gain/ {id:11,duration:60,level:3}
#音と視覚効果
execute at @s run playsound minecraft:entity.player.hurt_drown player @a ~ ~ ~ 1 2
execute at @s run playsound minecraft:block.grass.break block @a ~ ~ ~ 1 2
execute at @s run particle happy_villager ~ ~0.2 ~ 0.2 0.2 0.2 0 20
#damage種類
tag @s add magicdamage
tag @s add rangedamage
#damage量
scoreboard players set @s damagetaken 50
#
data modify storage atktrigger: hage set value {itemtype:magic,id:29,atktype:1}
#attackercheck
function damage:atkercheck
