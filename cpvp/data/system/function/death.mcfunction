#殺した人取り出し
execute if entity @a[tag=atker,limit=1] as @a[tag=atker,limit=1] run function system:kill
#関連mob消去
execute as @e if score @s owner = @a[tag=victim,limit=1] playerdata run kill @s
#関節キル取り出し
tag @s add tmpdied
execute if score @s attacker matches 0.. as @a if score @s playerdata = @a[tag=tmpdied,limit=1] attacker run function system:kill
scoreboard players set @s afterdamage -1
scoreboard players set @s attacker -1
tag @s remove tmpdied
#ゲーム中か
execute as @s[tag=player,tag=alive] if score $phase main matches 3 run function system:eliminate
#汎用処理
title @s title {"bold":true,"color":"white","text":"You died!"}
execute at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 1 0.8 1
scoreboard players operation @s hp = @s maxhp
scoreboard players operation @s mp = @s maxmp