#mp減少
scoreboard players operation @s mp -= @s mpcost

#
tag @s add m29tmp
execute at @s summon marker run function items:skills/magic/29/markersummoned
tag @s remove m29tmp

#CT付与
scoreboard players set $ct main 220
function api:ct/mainhand