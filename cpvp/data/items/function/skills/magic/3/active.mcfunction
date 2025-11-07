scoreboard players operation @s mp -= @s mpcost
tellraw @s {text:"----------------------------------------"}
execute as @a[distance=..25,tag=!magic3,scores={absorption=..0},tag=!perk39] run function items:skills/magic/3/players
execute as @a[distance=..25,tag=!magic3,scores={absorption=1..},tag=!perk39] run function items:skills/magic/3/players2
execute as @e[distance=..25,type=#main:non_player,scores={absorption=..0}] run function items:skills/magic/3/entity
execute as @e[distance=..25,type=#main:non_player,scores={absorption=1..}] run function items:skills/magic/3/entity2
tellraw @s {text:"----------------------------------------"}
execute at @s run playsound block.amethyst_block.break block @s ~ ~ ~ 2 1 1
execute at @s run playsound block.amethyst_block.break block @s ~ ~ ~ 2 1 1
execute at @s run playsound block.amethyst_block.break block @s ~ ~ ~ 2 1 1
scoreboard players set $ct main 600
function api:ct/mainhand
data modify storage dummy rename set value {"color":"dark_blue","italic":false,"text":"Information"}
function items:skills/item/itemmodify