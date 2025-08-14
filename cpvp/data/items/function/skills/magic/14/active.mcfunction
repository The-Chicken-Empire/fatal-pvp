#mp減少
scoreboard players operation @s mp -= @s mpcost

tag @s add magic14tmp
execute at @s summon marker run function items:skills/magic/14/markersummoned
tag @s remove magic14tmp

function system:cooltime/general/set_ct_mainhand {cooltime:300}