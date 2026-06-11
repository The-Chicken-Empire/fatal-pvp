tag @s add rangenexttick
scoreboard players operation @s rangeattacker = @e[tag=rangeattackertmp] playerdata
tag @e[tag=rangeattackertmp] remove rangeattackertmp

execute store result score @s usedgun run data get storage cpvp:gundata id
data remove storage cpvp:gundata id