function effects:system/pick/ {id:51}
execute store result score #counter counter run data get storage effect: targeteffect.level -30
scoreboard players add #counter counter 100
execute store result score #counter counter2 run random value 1..100
execute unless score #counter counter >= #counter counter2 run return run scoreboard players reset #counter


scoreboard players operation @s hp = @s maxhp
scoreboard players operation @s hp /= $4 main
function effects:modify {id:51,level:1,duration:99999}
execute at @s run playsound item.totem.use player @a ~ ~ ~ 1 1 1 
execute at @s run particle totem_of_undying ~ ~ ~ 0 0 0 1 50 normal