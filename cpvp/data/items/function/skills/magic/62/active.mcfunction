
#デバフ
tag @s add magic62tmp

tag @s add buffer
function effects:system/gain/ {id:25,level:1,duration:100}

execute at @s run playsound block.bell.use block @a ~ ~ ~ 1 0 0
execute at @s run playsound block.bell.use block @a ~ ~ ~ 1 0 0
execute at @s run playsound block.bell.use block @a ~ ~ ~ 1 0 0
execute at @s run playsound item.spyglass.use player @a ~ ~ ~ 1 0 0
execute at @s run playsound item.spyglass.use player @a ~ ~ ~ 1 0 0
execute at @s run playsound ui.button.click player @a ~ ~ ~ 1 2 0


execute at @s summon marker run function items:skills/magic/62/summonmarker

tag @s remove magic62tmp
#ct
scoreboard players set $ct main 2400
function api:ct/mainhand