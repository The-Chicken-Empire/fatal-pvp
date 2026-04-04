tag @e[distance=1.4..,tag=range7victimtmp,type=#main:player_type] add range7hstmp
tag @e remove range7victimtmp
execute at @e[tag=range7hstmp,type=#main:player_type] run particle dust{color:10551296,scale:1} ~ ~1 ~ 0.3 0.6 0.3 0 10 normal

#kill @s