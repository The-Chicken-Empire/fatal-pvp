scoreboard players set @s weapon3 0
#CTcheck
scoreboard players set @s mpcost 3000
execute if data storage cpvp:triggers/using {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1 run function items:skills/weapon/3/active

scoreboard players set @s mpcost 0