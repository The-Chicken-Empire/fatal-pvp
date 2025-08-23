scoreboard players set @s mpcost 1600
#CTcheck
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1.. run function items:skills/magic/14/active
#使用後処理
scoreboard players reset $check main
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost