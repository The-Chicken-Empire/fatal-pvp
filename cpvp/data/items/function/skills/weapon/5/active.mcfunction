#mp減少
scoreboard players operation @s mp -= @s mpcost
tag @s add weapon5
tag @s add w5skilltmp
execute summon marker run function items:skills/weapon/5/markersummon
tag @s remove w5skilltmp

playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 0
particle dust{color:[0.500,0.000,0.000],scale:2} ~ ~ ~ 1 1 1 1 100 force
function effects:system/modify/ {id:"21",duration:12,level:1}

function system:cooltime/general/set_ct_mainhand {cooltime:400}