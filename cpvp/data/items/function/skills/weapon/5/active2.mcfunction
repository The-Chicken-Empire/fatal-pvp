#mp減少

tag @s add weapon5.2
tag @s add w5skilltmp2
execute summon marker run function items:skills/weapon/5/markersummon2
tag @s remove w5skilltmp2

playsound minecraft:block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 2 2
particle dust{color:[1.000,0.000,0.000],scale:2} ~ ~ ~ 1 1 1 1 100 force
function effects:system/modify/ {id:"21",duration:8,level:1}

scoreboard players set $ct main 320
function api:ct/mainhand