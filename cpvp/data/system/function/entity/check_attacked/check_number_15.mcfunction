#>system:entity/check_attacked/check_number_15
# 
# 攻撃を受けたエンティティの識別番号の16桁目が0か1かを調べ、これに一致するエンティティが攻撃対象者であると判断し、
# attackedタグを付与する。また、対象がプレイヤであった場合はプレイヤのattacked_byスコアに攻撃者のplayer_numberを代入する。
#
# @within system:entity/check_attacked

execute if entity @a[tag=atker,advancements={system:entity/phe={15-0 = true}}] as @s[tag=ID15.0] run tag @s add victim
execute if entity @a[tag=atker,advancements={system:entity/phe={15-1 = true}}] as @s[tag=ID15.1] run tag @s add victim

#damagecalc
scoreboard players set @s damagetaken 10000
execute if entity @s[tag=victim] store result score $tmp tmp run data get entity @s Health 10
scoreboard players operation @s damagetaken -= $tmp tmp
scoreboard players reset $tmp tmp
execute if data entity @a[tag=atker,limit=1] SelectedItem.components."minecraft:custom_data".cpvp.magicweapon run tag @s add magicdamage
execute unless data entity @a[tag=atker,limit=1] SelectedItem.components."minecraft:custom_data".cpvp.magicweapon run tag @s add physicaldamage
tag @s add meleedamage
function damage:damagecalc
#回復
effect give @s[tag=victim] instant_health 1 10