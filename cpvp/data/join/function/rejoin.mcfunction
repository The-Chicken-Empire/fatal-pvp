tag @s add rejoin
scoreboard players reset @s rejoin
function system:reset/reset
execute as @e[type=#main:entity_require_id] if score @s owner = @a[tag=rejoin,limit=1] playerdata run function damage:entity_death
execute if entity @s[tag=alive] run function join:eliminate
execute if entity @s[tag=aliving] run function join:rarecase

tag @s remove rejoin