clear @s *[custom_data~{cpvp:{arrowid:2b}}]

function items:generate/gun/13/generate
function gui:items/invcheck
function gui:items/replace with storage cpvp:items get.[0]
data remove storage cpvp:items get

execute at @s run playsound entity.arrow.hit hostile @s ~ ~1 ~ 1 0.5 0
execute at @s run particle electric_spark ~ ~1 ~ 0 0 0 0.8 10
#ct
scoreboard players set $ct main 400
function api:ct/mainhand