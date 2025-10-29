tag @s add m41charged
execute as @a[tag=magic41tmp3] at @s run playsound block.respawn_anchor.charge block @a ~ ~ ~ 1 0.5 0
tag @a[tag=magic41tmp3] remove magic41tmp3
scoreboard players set @s skills -10