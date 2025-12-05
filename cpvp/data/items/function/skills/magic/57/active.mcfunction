#デバフ
tag @s add magic57tmp

scoreboard players set $eng main 4
function api:charge/

execute as @e[tag=magic57marker] if score @s owner = @a[tag=magic57tmp,limit=1] playerdata run kill @s
execute summon marker run function items:skills/magic/57/summonmarker
execute at @s run playsound entity.allay.ambient_with_item block @s ~ ~ ~ 1 1.2 1
execute at @s run particle snowflake ~ ~1 ~ 0.2 0.2 0.2 0.3 8 normal

tag @s remove magic57tmp
#ct
scoreboard players set $ct main 300
function api:ct/mainhand