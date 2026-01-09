#check
scoreboard players set @s mpcost 3500
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1 run function items:skills/magic/63/active
#使用後処理
scoreboard players reset $check main
scoreboard players set @s carrotuse 0