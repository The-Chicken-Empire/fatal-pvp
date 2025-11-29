tag @s add boots6tmp
scoreboard players set $tmp tmp 20
execute as @e[tag=food4marker] if score @s owner = @a[tag=boots6tmp,limit=1] playerdata run scoreboard players operation $tmp tmp /= $2 main
tag @s remove boots6tmp
scoreboard players operation @s hp -= $tmp tmp
scoreboard players reset $tmp tmp
execute if score @s hp matches ..0 run scoreboard players set @s hp 1
execute at @s run playsound entity.player.hurt player @s ~ ~ ~ 1 1.5 1