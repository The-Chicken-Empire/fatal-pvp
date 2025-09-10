scoreboard players reset @s counter3
scoreboard players add @s counter 1
playsound block.anvil.use master @a ~ ~ ~ 1 0
execute if score @s counter matches 3 run scoreboard players set $absorption main 500
execute if score @s counter matches 3 run tag @a[tag=cp.owner] add healer
execute if score @s counter matches 3 run function api:absorption/
playsound entity.player.levelup player @a[tag=cp.owner] ~ ~ ~ 1 1
title @a[tag=cp.owner] subtitle [{"text":"<エリクサーポンプ>","color":"light_purple"},{"text":"がレベル","color":"white"},{"score":{"name":"@s","objective":"counter"},"color":"white"},{"text":"になった!","color":"white"}]
title @a[tag=cp.owner] title {"text":""}