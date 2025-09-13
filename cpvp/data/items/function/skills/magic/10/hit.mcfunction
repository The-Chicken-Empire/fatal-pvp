execute if entity @s[gamemode=spectator] run return fail
tag @s add magic10victim
#ダメージctのcheck
##score説明
#magic10 ct用markerのvictimとのidの紐づけ用
#magic10-4 ct用markerのitemdisplayとのidの紐づけ用
scoreboard players set $tmp tmp 0
execute if entity @s[type=player] as @e[type=marker,tag=magic10ctplayer] if score @s magic10 = @e[tag=magic10victim,limit=1] playerdata if score @s magic10-4 = @e[tag=magic10tmp,limit=1] markerid run scoreboard players set $tmp tmp 1
execute if entity @s[type=!player] as @e[type=marker,tag=magic10ctentity] if score @s magic10 = @e[tag=magic10victim,limit=1] ID if score @s magic10-4 = @e[tag=magic10tmp,limit=1] markerid run scoreboard players set $tmp tmp 1
execute if score $tmp tmp matches 1 run return run tag @s remove magic10victim

#ここからHIT判定

scoreboard players operation @s attackerdata = @e[tag=magic10tmp,limit=1] owner
execute at @s run playsound block.sculk_shrieker.shriek block @s ~ ~ ~ 0.8 2 0.8
scoreboard players set @s damagetaken 40
tag @s add magicdamage
tag @s add rangedamage
#MP吸収
execute if score @s mp matches 0..499 run scoreboard players set $tmp2 tmp 0
execute if score @s mp matches 500.. run scoreboard players set $tmp2 tmp 1
execute if score $tmp2 tmp matches 0 run scoreboard players operation $tmp3 tmp = @s mp
execute if score $tmp2 tmp matches 1 run scoreboard players set $tmp3 tmp 500
execute if entity @s[type=!player] run scoreboard players set $tmp3 tmp 500
scoreboard players operation $mr main = $tmp3 tmp
execute as @a if score @s playerdata = @e[tag=magic10tmp,limit=1] owner run function api:mr/
scoreboard players reset $tmp2 tmp
scoreboard players reset $tmp3 tmp
scoreboard players remove @s mp 500
execute if score @s mp matches ..0 run scoreboard players set @s mp 0

function damage:atkercheck

#ダメージct召喚
execute if entity @s[type=player] summon marker run function items:skills/magic/10/damagectplayer
execute if entity @s[type=!player] summon marker run function items:skills/magic/10/damagectentity
tag @s remove magic10victim