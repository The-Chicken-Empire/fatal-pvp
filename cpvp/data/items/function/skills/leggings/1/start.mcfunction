tag @s add leggings1victim
summon marker ~ ~ ~ {Tags:["skillmarker","leggings1"]}
execute as @e[type=marker,tag=!tagged,sort=nearest,tag=leggings1,limit=1] run scoreboard players operation @s owner = @a[tag=leggings1atker,limit=1] playerdata
execute as @e[type=marker,tag=!tagged,sort=nearest,tag=leggings1,limit=1] run scoreboard players operation @s leggings1victim = @a[tag=leggings1victim,limit=1] playerdata
execute as @e[type=marker,tag=!tagged,sort=nearest,tag=leggings1,limit=1] run scoreboard players operation @s leggings1damage = @a[tag=leggings1atker,limit=1] damagetaken
tag @e[type=marker,tag=!tagged,sort=nearest,tag=leggings1,limit=1] add tagged
