
#check



execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1 run function items:skills/magic/37/particle/using
#つかったよ！
scoreboard players reset $check main