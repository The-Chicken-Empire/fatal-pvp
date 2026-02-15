scoreboard players reset $tmp tmp
tellraw @s {"text":"インベントリに空きがありません！","bold":true,"color":"red"}
execute at @s run playsound minecraft:entity.villager.no hostile @s ~ ~ ~ 1 1 1