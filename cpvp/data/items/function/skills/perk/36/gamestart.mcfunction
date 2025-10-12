scoreboard players reset @s perk36
tag @s add perk36this
execute as @a[distance=0.1..] if score @s teamscore = @a[tag=perk36this,limit=1] teams run tag @s add perk36flag
execute if entity @a[tag=perk36flag] run scoreboard players operation @s perk36 = @r[tag=perk36flag] playerdata
tag @s remove perk36this
tag @a remove perk36flag
