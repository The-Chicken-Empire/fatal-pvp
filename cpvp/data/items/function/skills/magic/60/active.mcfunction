scoreboard players set $eng main 10
function api:charge/

scoreboard players set $tmp tmp 0
function items:skills/magic/60/remove
data remove storage cpvp:magic60 effects
data remove storage cpvp:magic60 count
data remove storage cpvp:magic60 tgeffect

execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
execute at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 2 1
execute at @s run particle dust{color:16777215,scale:1} ~ ~1 ~ 0.3 0.6 0.3 0.3 12 normal
execute at @s run particle white_smoke ~ ~1 ~ 0.3 0.6 0.3 0.25 8 normal

scoreboard players reset $tmp tmp
scoreboard players reset $tmp2 tmp
scoreboard players reset $tmp3 tmp
#ct
scoreboard players set $ct main 320
function api:ct/mainhand