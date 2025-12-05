#デバフ
tag @s add magic58tmp

scoreboard players set $eng main 5
function api:charge/

execute as @e[tag=magic58marker] if score @s owner = @a[tag=magic58tmp,limit=1] playerdata run kill @s
execute summon marker run function items:skills/magic/58/summonmarker
execute at @s run playsound item.flintandsteel.use block @s ~ ~ ~ 1 1.2 1
execute at @s run particle small_flame ~ ~1 ~ 0.2 0.2 0.2 0.3 8 normal

tag @s remove magic58tmp
#ct
scoreboard players set $ct main 280
function api:ct/mainhand