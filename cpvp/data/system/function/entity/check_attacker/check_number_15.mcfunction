#>systems:check_attacker/check_number_15
# 
# 攻撃をしたエンティティの識別番号の16桁目が0か1かを調べ、それに一致するエンティティが攻撃者であると判断し、
# attackerタグを付与する。
#
# @within systems:check_attacker

execute if entity @a[tag=attacked,advancements={system:entity/ehp={15-0 = true}}] as @s[tag=ID15.0] run tag @s add attackerentity
execute if entity @a[tag=attacked,advancements={system:entity/ehp={15-1 = true}}] as @s[tag=ID15.1] run tag @s add attackerentity

#本体にatkertag付与
execute as @a if score @s playerdata = @e[tag=attackerentity,limit=1] owner run tag @s add atker

#damagecalc
execute if entity @s[tag=magicmob] run tag @a[tag=victim] add magicdamage
execute unless entity @s[tag=magicmob] run tag @a[tag=victim] add physicaldamage
tag @a[tag=victim] add meleedamage
function damage:damagecalc

#解除
tag @s remove attackerentity