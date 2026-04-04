execute store result storage cpvp:effect54 duration int 2 run scoreboard players get @e[tag=victim,limit=1] damagetaken
data modify storage cpvp:effect54 level set value 2
function effects:system/gain/ with storage cpvp:effect54