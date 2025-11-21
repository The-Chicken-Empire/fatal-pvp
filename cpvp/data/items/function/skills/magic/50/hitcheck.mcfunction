scoreboard players remove @s counting 1
scoreboard players add @s counting3 1
scoreboard players set @s counting2 10
execute at @s run playsound block.glass.break block @a ~ ~ ~ 1 0.5 0
execute at @s run playsound block.glass.break block @a ~ ~ ~ 1 0.5 0
execute at @s run playsound entity.breeze.hurt block @a ~ ~ ~ 1 1.6 0

execute if score @s counting3 matches 1 at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0 0
execute if score @s counting3 matches 1 at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0 0
execute if score @s counting3 matches 2 at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0.3 0
execute if score @s counting3 matches 2 at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0.3 0
execute if score @s counting3 matches 3 at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0.6 0
execute if score @s counting3 matches 3 at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0.6 0
execute if score @s counting3 matches 4 at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0.9 0
execute if score @s counting3 matches 4 at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0.9 0
execute if score @s counting3 matches 5.. at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 1.2 0
execute if score @s counting3 matches 5.. at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 1.2 0
execute if score @s counting3 matches 1 at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0 0
execute if score @s counting3 matches 1 at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0 0
execute if score @s counting3 matches 2 at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0.3 0
execute if score @s counting3 matches 2 at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0.3 0
execute if score @s counting3 matches 3 at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0.6 0
execute if score @s counting3 matches 3 at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0.6 0
execute if score @s counting3 matches 4 at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0.9 0
execute if score @s counting3 matches 4 at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 0.9 0
execute if score @s counting3 matches 5.. at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 1.2 0
execute if score @s counting3 matches 5.. at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 1.2 0
execute if score @s counting3 matches 5.. at @s run playsound block.glass.break block @a ~ ~ ~ 1 0.7 0
execute if score @s counting3 matches 5.. at @s run playsound block.glass.break block @a ~ ~ ~ 1 0.7 0

execute at @s run particle dust_color_transition{from_color:15615,to_color:5177487,scale:0.9} ~ ~ ~ 1.8 2.4 1.8 0 25
execute at @s run particle dust_color_transition{to_color:15615,from_color:5177487,scale:0.9} ~ ~ ~ 1.4 2 1.4 0 25

execute if score @s counting3 matches 1 at @s run function items:skills/magic/50/count/1
execute if score @s counting3 matches 2 at @s run function items:skills/magic/50/count/2
execute if score @s counting3 matches 3 at @s run function items:skills/magic/50/count/3
execute if score @s counting3 matches 4 at @s run function items:skills/magic/50/count/4
execute if score @s counting3 matches 5 at @s run function items:skills/magic/50/count/5
execute if score @s counting3 matches 6 at @s run function items:skills/magic/50/count/6
execute if score @s counting3 matches 7 at @s run function items:skills/magic/50/count/7
execute if score @s counting3 matches 8 at @s run function items:skills/magic/50/count/8

execute as @e[tag=magic50hit] run function items:skills/magic/50/hit
tag @e[tag=magic50hit] remove magic50hit