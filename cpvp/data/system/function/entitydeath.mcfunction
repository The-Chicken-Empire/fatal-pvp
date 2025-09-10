#殺した人取り出し
#execute if entity @a[tag=atker,limit=1] as @a[tag=atker,limit=1] run function system:kill
#関節キル取り出し
tag @s add tmpdied
#execute if score @s attacker matches 0.. as @a if score @s playerdata = @a[tag=tmpdied,limit=1] attacker run function system:kill
scoreboard players set @s afterdamage -1
scoreboard players set @s attacker -1
tag @s remove tmpdied
tag @s add entity_death
