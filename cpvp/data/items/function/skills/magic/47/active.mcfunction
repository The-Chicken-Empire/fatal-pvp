#mp減少
scoreboard players operation @s mp -= @s mpcost


tag @s add m47tmp
execute at @s summon marker run function items:skills/magic/47/markersummoned
tag @s remove m47tmp

playsound minecraft:block.beacon.activate block @a ~ ~ ~ 2 1.7
tag @s add m47caster

#CT付与
scoreboard players set $ct main 400
function api:ct/mainhand