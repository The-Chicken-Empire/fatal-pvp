summon marker ~ ~ ~ {Tags:["cp.tmp2","seraph_jajaja","skillmarker"]}


execute if entity @s[type=!player] run tag @e[tag=cp.tmp2] add seraph_jajaja_entity 
scoreboard players operation @e[tag=cp.tmp2] owner = @a[tag=cp.owner] playerdata
scoreboard players operation @e[tag=cp.tmp2] ownerteam = @a[tag=cp.owner] teamscore
execute if entity @s[type=player] run scoreboard players operation @e[tag=cp.tmp2] counter = @s playerdata
execute if entity @s[type=!player] run scoreboard players operation @e[tag=cp.tmp2] counter = @s ID


tag @s remove cp.hit
tag @e[tag=cp.tmp2] remove cp.tmp2