execute if entity @s[tag=magic36unready] at @s run return run function items:skills/magic/36/tick/unready


scoreboard players add @s counter2 1
execute if score @s counter2 matches 1 run playsound item.totem.use master @a ~ ~ ~ 1 1
scoreboard players remove @s counter3 1
execute unless score @s counter3 matches 1.. at @s run function items:skills/magic/36/tick/ready
tp @s ^ ^ ^1.65

particle smoke ~ ~ ~ 1 1 1 0.2 14
particle flame ~ ~ ~ 1 1 1 0.2 2
playsound entity.blaze.shoot master @a ~ ~ ~ 0.7 2











execute unless block ~ ~ ~ #main:air run kill


execute if score @s counter2 matches 200.. run kill

