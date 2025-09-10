scoreboard players operation @s owner = @a[tag=leggings1atker,limit=1] playerdata
scoreboard players operation @s target = @a[tag=leggings1victim,limit=1] playerdata
scoreboard players operation @s leggings1damage = @a[tag=leggings1atker,limit=1] damagetaken
scoreboard players operation @s leggings1damage /= $4 main
tag @s add skillmarker
tag @s add leggings1