execute if score @s magic41ct matches 1.. run return fail

tag @s add magic41stmp
scoreboard players operation @s mp -= @s mpcost
execute as @e[tag=magic41totem] if score @s owner = @a[tag=magic41stmp,limit=1] playerdata run tag @s add m41delete
execute as @e[tag=magic41totem] if score @s owner = @a[tag=magic41stmp,limit=1] playerdata run function damage:entity_death

execute at @s positioned ~ ~ ~ summon creeper run function items:skills/magic/41/summontotem
execute at @s run playsound block.trial_spawner.spawn_item block @a ~ ~ ~ 1 1 0

tag @s remove magic41stmp
scoreboard players set @s magic41ct 200