#電光石火検知
tag @s add magic32tmp
scoreboard players set $tmp tmp 0
execute as @e[tag=magic32dash] if score @s target = @a[tag=magic32tmp,limit=1] playerdata run scoreboard players set $tmp tmp 1
execute if score $tmp tmp matches 1 run return run function items:skills/magic/32/fire
scoreboard players reset $tmp tmp

#check
scoreboard players set @s mpcost 1500
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1 run function items:skills/magic/32/dash

tag @s remove magic32tmp
#つかったよ！
scoreboard players reset $check main
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost