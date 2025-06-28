#仮のタグを正規なタグに変換
tag @s add victim
tag @s remove meleevictim
execute as @e[tag=meleeatker] if score @s meleeattacker = @e[tag=victim,limit=1] playerdata run tag @s add atker
execute as @e[tag=meleeatker] if score @s meleeattacker = @e[tag=victim,limit=1] playerdata run tag @s remove meleeatker
#ダメージ種
execute if entity @e[tag=atker,tag=magicweapon,limit=1] run tag @s add magicdamage
execute unless entity @e[tag=atker,tag=magicweapon,limit=1] run tag @s add phisicaldamage
execute if entity @e[tag=atker,advancements={system:projectile=false}] run tag @s add meleedamage
execute if entity @e[tag=atker,advancements={system:projectile=true}] run tag @s add rangedamage
tag @e[tag=atker,tag=magicweapon] remove magicweapon
#ダメージ計算
scoreboard players operation @s damagetaken = @s damageresist

function damage:damagecalc
scoreboard players reset @s damageresist