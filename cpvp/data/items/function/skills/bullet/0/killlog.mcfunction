data modify storage cpvp:attackdata $(tmp).attacktype set value bullet0
data modify storage cpvp:attackdata $(tmp).itemtype set value gun

#銃種
execute if entity @e[tag=tmpbullet,tag=gun1] run data modify storage cpvp:attackdata $(tmp).id set value 1