scoreboard players reset #counter
scoreboard players operation @s mp -= @s mpcost

function system:cooltime/general/set_ct_mainhand {cooltime:240}
function effects:modify {id:23,level:-15,duration:0}

playsound minecraft:block.end_portal.spawn player @s ~ ~ ~ 1 2
particle explosion ~ ~1 ~ 0 0 0 5 1 normal @a
particle end_rod ~ ~1 ~ 0 0 0 1 100 normal @a

tag @s add cp.owner
execute anchored eyes positioned ^ ^ ^ summon item_display run function items:skills/weapon/9/skill2/summon
execute anchored eyes run tp @e[tag=cp.this] ^ ^ ^ ~120 ~
tag @e[tag=cp.this] remove cp.this

execute anchored eyes positioned ^ ^ ^ summon item_display run function items:skills/weapon/9/skill2/summon
execute anchored eyes run tp @e[tag=cp.this] ^ ^ ^ ~-120 ~
tag @e[tag=cp.this] remove cp.this

execute anchored eyes positioned ^ ^ ^ summon item_display run function items:skills/weapon/9/skill2/summon
execute anchored eyes run tp @e[tag=cp.this] ^ ^ ^ ~ ~
tag @e[tag=cp.this] remove cp.this




tag @s remove cp.owner