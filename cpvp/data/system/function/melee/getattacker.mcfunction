#仮のタグを正規なタグに変換
#tag @s add victim
tag @s add victimtmp
scoreboard players operation @s attackerdata = @s meleeattacker

#victimhenkou
#execute as @e[tag=meleeatker] if score @s meleeattacker = @e[tag=victim,limit=1] playerdata run tag @s add atker
execute as @a[tag=meleeatkertmp2] if score @s playerdata = @a[tag=victimtmp,limit=1] meleeattacker run tag @s add meleeatkertmp3
#meleeatkertmp2はtickで消す
#ダメージ種
execute if entity @e[tag=meleeatkertmp3,tag=magicweapon,limit=1] run tag @s add magicdamage
execute unless entity @e[tag=meleeatkertmp3,tag=magicweapon,limit=1] run tag @s add physicaldamage
execute if entity @a[tag=meleeatkertmp3,advancements={system:projectile=false}] run tag @s add meleedamage
execute if entity @a[tag=meleeatkertmp3,advancements={system:projectile=true}] run tag @s add rangedamage
tag @e[tag=atker,tag=magicweapon] remove magicweapon
advancement revoke @s only system:ehpprojectile
#多分消していい
scoreboard players reset @s meleeattacker

execute store result storage cpvp:tmp player byte 1 run scoreboard players get @s playerdata
function damage:atktrigger/melee/p with storage cpvp:tmp
data remove storage cpvp:tmp player

tag @s remove victimtmp

#ダメージ計算
scoreboard players operation @s damagetaken = @s damageresist
scoreboard players reset @s damageresist
tag @s add meleevictim
tag @s remove meleevictimtmp2
execute as @e[tag=meleeatkertmp3] run tag @s add meleeatker
tag @a remove meleeatkertmp3
 
tag @s add nodamagesound
scoreboard players operation @s attackerdata = @a[tag=meleeatker,limit=1] playerdata
function damage:atkercheck