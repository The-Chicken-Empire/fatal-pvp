#check
scoreboard players set @s mpcost 1400
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1 run function items:skills/magic/13/active
#つかったよ！
scoreboard players reset $check main
scoreboard players set @s carrotuse 0