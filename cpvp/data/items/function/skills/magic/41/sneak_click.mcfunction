execute if score @s magic41ct matches 1.. run return fail

scoreboard players set @s mpcost 2000

scoreboard players set $check tmp 0
execute store result score $check tmp run function system:skillcostcheck/mpcheck
execute unless score $check tmp matches 1 run function system:skillcostcheck/mpless
execute unless score $check tmp matches 1 run return run scoreboard players reset $check tmp
scoreboard players reset $check tmp


function items:triggers/getmpuse/
scoreboard players operation @s mp -= @s mpcost
scoreboard players reset @s mpcost

function items:skills/magic/41/actives