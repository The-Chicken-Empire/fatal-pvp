execute if entity @s[type=player] store result storage cpvp:getbowdata player byte 1 run scoreboard players get @s playerdata
execute if entity @s[type=!player] store result storage cpvp:getbowdata entity byte 1 run scoreboard players get @s entitydata
execute if entity @s[type=player] run function system:melee/rangedelay with storage cpvp:getbowdata
execute if entity @s[type=!player] run function system:melee/rangedelaye with storage cpvp:getbowdata
#data remove storage cpvp:getbowdata id
#data remove storage cpvp:getbowdata player