execute if entity @s[type=player] store result storage cpvp:getbowdata player byte 1 run scoreboard players get @s playerdata
function system:melee/rangedelay with storage cpvp:getbowdata
#data remove storage cpvp:getbowdata id
#data remove storage cpvp:getbowdata player