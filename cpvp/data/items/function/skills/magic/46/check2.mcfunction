#mp減少


#CT付与
scoreboard players set $ct main 600
function api:ct/mainhand

execute unless predicate items:sneak run return run function items:skills/magic/46/activate
execute if predicate items:sneak run function items:skills/magic/46/activate2

