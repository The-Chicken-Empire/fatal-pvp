#CTcheck
scoreboard players set @s mpcost 1800
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1 run function items:skills/magic/1/active
scoreboard players reset $check main

#つかったよ！
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost
