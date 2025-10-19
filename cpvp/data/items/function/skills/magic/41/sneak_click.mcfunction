scoreboard players set @s mpcost 2000

scoreboard players set $check tmp 0
execute store result score $check tmp run function system:skillcostcheck/mpcheck
execute unless score $check tmp matches 1 run function system:skillcostcheck/mpless
execute unless score $check tmp matches 1 run return run scoreboard players reset $check tmp
scoreboard players reset $check tmp
execute if score @s magic41ct matches 1.. run return fail
function items:skills/magic/41/actives