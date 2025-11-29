



tag @s add cp.this

summon item_display ~ ~ ~ {Tags:["seraph_overload","skillmarker","cp.tmp","seraph_overload_bullet"]}
scoreboard players operation @e[tag=cp.tmp] owner = @s playerdata
scoreboard players operation @e[tag=cp.tmp] ownerteam = @s teamscore
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=cp.tmp] ~ ~ ~ ~ ~

execute anchored eyes run playsound minecraft:entity.breeze.death master @a ^ ^ ^2 4 0.5
#execute anchored eyes run playsound minecraft:entity.breeze.death master @a ^ ^ ^2 4 0
execute anchored eyes run playsound minecraft:entity.breeze.death master @a ^ ^ ^2 4 0.8


tag @e[tag=cp.tmp] remove cp.tmp
tag @s remove cp.this






scoreboard players set $ct main 120

function api:ct/mainhand

scoreboard players reset #counter



