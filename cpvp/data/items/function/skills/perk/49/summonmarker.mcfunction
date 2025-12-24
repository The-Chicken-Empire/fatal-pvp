tag @s add skillmarker
tag @s add perk49marker
scoreboard players operation @s counting += @a[tag=perk49tmp,limit=1] damagetaken
scoreboard players operation @s target += @a[tag=perk49tmp,limit=1] playerdata