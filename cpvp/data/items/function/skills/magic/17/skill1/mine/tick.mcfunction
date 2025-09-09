scoreboard players add @s counter 1
tag @s add cp.this
execute as @e[tag=playing,distance=..3,limit=1] unless score @s teamscore = @e[tag=cp.this,limit=1] ownerteam run tag @s add cp.what
execute if score @s counter matches 10.. if entity @e[tag=playing,distance=..3,limit=1] at @s run function items:skills/magic/17/skill1/mine/explode
tag @e[tag=cp.what] remove cp.what
tag @s remove cp.this




execute if score @s counter matches 1200.. run kill