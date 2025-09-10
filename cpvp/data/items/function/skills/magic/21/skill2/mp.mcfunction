tag @a[tag=cp.owner] add healer
execute if score @e[tag=cp.this,limit=1] counter matches 3.. run scoreboard players set $heal main 40
execute if score @e[tag=cp.this,limit=1] counter matches 3.. run function api:heal/






scoreboard players operation $mr main = @e[tag=cp.this,limit=1] counter
scoreboard players operation $mr main *= $3 main
scoreboard players operation $mr main *= $10 main
scoreboard players operation $mr main *= $10 main
tag @a[tag=cp.owner] add healer
function api:mr/
