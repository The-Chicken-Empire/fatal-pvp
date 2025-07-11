#>system:entity/check_attacked/check_number_15
# 
# 攻撃を受けたエンティティの識別番号の16桁目が0か1かを調べ、これに一致するエンティティが攻撃対象者であると判断し、
# attackedタグを付与する。また、対象がプレイヤであった場合はプレイヤのattacked_byスコアに攻撃者のplayer_numberを代入する。
#
# @within system:entity/check_attacked

execute if entity @a[tag=atkertmp,advancements={system:entity/phe={15-0 = true}}] as @s[tag=ID15.0] run tag @s add victimtmp
execute if entity @a[tag=atkertmp,advancements={system:entity/phe={15-1 = true}}] as @s[tag=ID15.1] run tag @s add victimtmp

#damagecalc
scoreboard players set @s damagetaken 10000
execute if entity @s[tag=victimtmp] store result score $tmp tmp run data get entity @s Health 10
scoreboard players operation @s damagetaken -= $tmp tmp
scoreboard players reset $tmp tmp
execute if data entity @a[tag=atkertmp,limit=1] SelectedItem.components."minecraft:custom_data".cpvp.magicweapon run tag @s add magicdamage
execute unless data entity @a[tag=atkertmp,limit=1] SelectedItem.components."minecraft:custom_data".cpvp.magicweapon run tag @s add physicaldamage
execute if entity @e[tag=atkertmp,advancements={system:projectile=false}] run tag @s add meleedamage
execute if entity @e[tag=atkertmp,advancements={system:projectile=true}] run tag @s add rangedamage


execute if entity @s[tag=victimtmp] run scoreboard players operation @s attackerdata = @e[tag=atkertmp,limit=1] playerdata
tag @e remove atkertmp
#回復
data modify entity @s[tag=victimtmp] Health set value 1000
tag @s remove victimtmp

function damage:atkercheck