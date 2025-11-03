#スニーク時別判定
execute if predicate items:sneak run return run function items:skills/weapon/17/sneak_right_click
#CTcheck
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1.. run function items:skills/weapon/17/active
#使用後処理
scoreboard players reset $check main
scoreboard players set @s carrotuse 0
