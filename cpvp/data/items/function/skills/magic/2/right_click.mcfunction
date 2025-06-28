#mp設定
tag @s add magic2
scoreboard players set $tmp tmp 0
execute as @a[distance=..20] unless score @s teamscore = @a[tag=magic2,limit=1] teamscore run scoreboard players add $tmp tmp 100
scoreboard players operation $tmp tmp *= $7 main
scoreboard players operation @s mpcost = $tmp tmp
#CTcheck
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
scoreboard players reset $check main
execute if score $check main matches 1 unless score $tmp tmp matches ..0 run function items:skills/magic/2/active
execute if score $check main matches 1 if score $tmp tmp matches ..0 run function items:skills/magic/2/fail
execute if score $check main matches 1 if score $tmp tmp matches ..0 run return run scoreboard players reset $tmp tmp

scoreboard players reset $check main
tag @s remove magic2
scoreboard players reset $tmp tmp
#つかったよ！
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost