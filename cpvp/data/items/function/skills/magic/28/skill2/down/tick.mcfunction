tag @s add cp.this
execute as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner run tag @s add cp.owner

execute as @a[tag=cp.owner] at @s unless block ~ ~-0.0000000000001 ~ #main:air run function items:skills/magic/28/skill2/down/explode





tag @a[tag=cp.owner] remove cp.owner
tag @s remove cp.this








scoreboard players add @s counter2 1
execute if score @s counter2 matches 100.. run kill