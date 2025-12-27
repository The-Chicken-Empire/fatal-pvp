#デバフ
tag @s add magic61tmp

tag @s add buffer
function effects:system/gain/ {id:1,level:2,duration:120}
tag @s add buffer
function effects:system/gain/ {id:5,level:1,duration:160}
execute as @a[tag=playing,distance=..20] unless score @s teamscore = @a[tag=magic61tmp,limit=1] teamscore run function items:skills/magic/61/removeinvis

execute at @s run playsound block.conduit.activate block @s ~ ~ ~ 1 1.2 1
execute at @s run playsound block.conduit.activate block @s ~ ~ ~ 1 1.4 1
execute at @s run playsound block.enchantment_table.use block @s ~ ~ ~ 1 0.7 1
execute at @s run particle enchant ~ ~1 ~ 0.2 0.2 0.2 0.3 35 normal
execute at @s run particle end_rod ~ ~1 ~ 0.5 0.7 0.5 0.3 15 normal

execute summon marker run function items:skills/magic/61/summonmarker

tag @s remove magic61tmp
#ct
scoreboard players set $ct main 240
function api:ct/mainhand