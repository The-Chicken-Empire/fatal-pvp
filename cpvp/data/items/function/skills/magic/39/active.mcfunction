tag @s add magic39tmp

execute at @s summon marker run function items:skills/magic/39/summonmarker
execute at @s run playsound entity.breeze.idle_air hostile @a ~ ~ ~ 1 0 0
execute at @s run particle snowflake ~ ~1 ~ 2 0 2 1 50

tag @s remove magic39tmp

scoreboard players set $ct main 280
function api:ct/mainhand