tag @s add buffer
execute at @s run playsound block.note_block.flute block @s ~ ~ ~ 1 2 1
execute at @s run particle happy_villager ~ ~1.3 ~ 0.3 0.3 0.3 0 5
scoreboard players remove $tmp tmp 30
execute if score $tmp tmp matches ..0 run return run function effects:system/remove/ {id:46}

execute store result storage cpvp:effect46 level int 1 run scoreboard players get $tmp tmp

data remove storage cpvp:effect46 level