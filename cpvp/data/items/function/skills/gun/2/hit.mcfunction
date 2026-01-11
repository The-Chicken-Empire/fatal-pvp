#アビリティダメージCTの確認
tag @s add range2victim
scoreboard players set $tmp tmp 0
execute as @e[type=marker,tag=range2ct] if score @s target = @e[tag=range2victim,limit=1] entitydata if score @s counting = @e[tag=range2tmp2,limit=1] markerid run scoreboard players set $tmp tmp 1
execute if score $tmp tmp matches 1 run return run tag @s remove range2victim
execute summon marker run function items:skills/gun/2/damagect
tag @s remove range2victim

#いつもの
tag @s add rangedamage
tag @s add physicaldamage
scoreboard players set @s damagetaken 15
scoreboard players operation @s attackerdata = @e[tag=range2tmp2,limit=1] owner
execute at @s run playsound entity.player.hurt_sweet_berry_bush block @a ~ ~ ~ 1 0.9 0
#アタックデータ
data modify storage atktrigger: hage set value {itemtype:gun,id:2,atktype:1}
function damage:atkercheck