#>systems:check_attacker/check_number_15
# 
# 攻撃をしたエンティティの識別番号の16桁目が0か1かを調べ、それに一致するエンティティが攻撃者であると判断し、
# attackerタグを付与する。
#
# @within systems:check_attacker

execute if entity @a[tag=victimtmp,advancements={system:entity/ehp={15-0 = true}}] as @s[tag=ID15.0] run tag @s add attackerentity
execute if entity @a[tag=victimtmp,advancements={system:entity/ehp={15-1 = true}}] as @s[tag=ID15.1] run tag @s add attackerentity

#本体にatkertag付与
execute as @a if score @s playerdata = @e[tag=attackerentity,limit=1] owner run tag @s add atkertmp

#damagecalc
execute if entity @s[tag=magicmob] run tag @a[tag=victimtmp] add magicdamage
execute unless entity @s[tag=magicmob] run tag @a[tag=victimtmp] add physicaldamage
tag @a[tag=victimtmp,advancements={system:ehpprojectile=true}] add rangedamage
tag @a[tag=victimtmp,advancements={system:ehpprojectile=false}] add meleedamage
#解除
advancement revoke @a[tag=victimtmp] only system:ehpprojectile

scoreboard players operation @a[tag=victimtmp,limit=1] attackerdata = @a[tag=atkertmp,limit=1] playerdata

tag @a remove atkertmp
tag @s remove attackerentity
tag @a remove victimtmp

tag @a[tag=victimtmp] add nodamagesound
function damage:atkercheck