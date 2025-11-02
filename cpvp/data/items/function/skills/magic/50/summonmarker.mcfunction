tag @s add skillmarker
tag @s add magic50rotate
tag @s add magic50rotatetmp
scoreboard players operation @s owner = @a[tag=magic50tmp,limit=1] playerdata
function items:skills/markerid
execute at @s rotated as @a[tag=magic50tmp,limit=1] run tp @s ~ ~ ~ ~ 0