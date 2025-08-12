tag @s add magic11tmp3
scoreboard players set @s magic11 5
function items:skills/magic/11/move
tag @s remove magic11tmp3
execute if score @s skills matches 20.. run kill @s
