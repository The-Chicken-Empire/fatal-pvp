tag @s add eat

scoreboard players set $heal main 180
tag @s add healer
function api:heal/
execute at @s run playsound block.beacon.power_select block @a ~ ~ ~ 1 2 0

data modify storage cpvp:stats_modifier input.add_modifier set value {id:"food4", stats: "vit", type: "add", duration:2400, value:-25}
function system:stats_modifier/add_modifier
tag @s add buffer
function effects:system/gain/ {id:14,level:3,duration:200}

tag @s add food4tmp
execute at @s summon marker run function items:skills/food/4/summonmarker
tag @s remove food4tmp
#必須項目。食事CT
function effects:system/gain/ {id:33,level:1,duration:400}

tag @s remove eat