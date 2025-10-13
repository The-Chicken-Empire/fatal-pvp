#if弾
tag @s add magic43tmp3
execute as @e[tag=magic43] if score @s owner = @a[tag=magic43tmp3,limit=1] playerdata at @s run return run function items:skills/magic/43/move
tag @s remove magic43tmp3

#check
scoreboard players set @s mpcost 800
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1 run function items:skills/magic/43/active
#つかったよ！
scoreboard players reset $check main
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost