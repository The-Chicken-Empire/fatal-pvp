#MP設定
scoreboard players set @s mpcost 3000
#CTcheck
execute if data storage cpvp:triggers/using {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1.. run function items:skills/magic/46/check2