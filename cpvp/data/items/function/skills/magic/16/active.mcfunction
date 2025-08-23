scoreboard players operation @s mp -= @s mpcost
tag @s add magic16tmp

execute at @s summon marker run function items:skills/magic/16/summonmarker
execute at @s run playsound entity.creeper.primed block @a ~ ~ ~ 1 0 1

tag @s remove magic16tmp
function system:cooltime/general/set_ct_mainhand {cooltime:1600}