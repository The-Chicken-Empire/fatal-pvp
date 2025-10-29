tag @s add skillmarker
tag @s add magic48core
tag @s add magic48tmp4
scoreboard players operation @s owner = @a[tag=magic48tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @a[tag=magic48tmp,limit=1] teamscore
function items:skills/markerid