#被弾判定
scoreboard players set $tmp tmp 1

#色々参照
scoreboard players operation @s damagetaken = @e[tag=tmpbullet,limit=1] bulletdamage
scoreboard players operation @s attackerdata = @e[tag=tmpbullet,limit=1] owner
tag @s add magicdamage
tag @s add rangedamage


#音
tag @s add tmpplayer
execute as @a if score @s playerdata = @e[tag=tmpplayer,limit=1] attackerdata at @s run playsound entity.arrow.hit_player player @a ~ ~ ~ 1 0.3 0
tag @s remove tmpplayer

#data
execute store result storage cpvp:tmp tmp byte 1 run scoreboard players get @s playerdata
function items:skills/bullet/0/killlog with storage cpvp:tmp
data remove storage cpvp:tmp tmp

function damage:atkercheck