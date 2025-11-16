#befo
tag @s add magic19check
scoreboard players set $tmp tmp 0
execute as @e[tag=magic19core] if score @s skills matches ..39 if score @s counting matches 0..2 if score @s owner = @a[tag=magic19check,limit=1] playerdata run scoreboard players add $tmp tmp 1
execute if score $tmp tmp matches 1 run return run function items:skills/magic/19/upg
execute if score $tmp tmp matches 2 run return run say ERROR
scoreboard players reset $tmp tmp
tag @s remove magic19check
#check
scoreboard players set @s engcost 10
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1 run function items:skills/magic/19/active
#つかったよ！
scoreboard players reset $check main
scoreboard players set @s carrotuse 0
scoreboard players reset @s engcost
scoreboard players reset @s mpcost