scoreboard players operation @s mp -= @s mpcost



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



function effects:system/pick/ {id:23}
execute store result score #counter counter run data get storage effect: targeteffect.level


execute if score #counter counter matches ..30 run function system:cooltime/general/set_ct_mainhand {cooltime:60}
execute if score #counter counter matches 31.. run function system:cooltime/general/set_ct_mainhand {cooltime:120}


scoreboard players reset #counter



