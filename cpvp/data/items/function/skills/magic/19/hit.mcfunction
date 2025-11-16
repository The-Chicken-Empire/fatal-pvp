execute at @s run playsound block.amethyst_block.place block @a ~ ~ ~ 1 1 1
execute at @s run playsound block.amethyst_block.place block @a ~ ~ ~ 1 1.3 1
execute at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 1 1
execute at @s run playsound block.amethyst_block.break block @a ~ ~ ~ 1 1.3 1

 
scoreboard players set $tmp tmp 0
function effects:system/pick/ {id:27}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute as @a if score @s playerdata = @e[tag=magic19coretmp,limit=1] owner run tag @s add buffer
execute if score $tmp tmp matches 0 run function effects:system/gain/ {id:27,level:2,duration:60}
execute if score $tmp tmp matches 1.. run function effects:system/modify/ {id:27,level:0,duration:10}
scoreboard players set $tmp tmp 0
function effects:system/pick/ {id:13}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute as @a if score @s playerdata = @e[tag=magic19coretmp,limit=1] owner run tag @s add buffer
execute if score $tmp tmp matches 0 run function effects:system/gain/ {id:13,level:3,duration:60}
execute if score $tmp tmp matches 1.. run function effects:system/modify/ {id:13,level:0,duration:10}
scoreboard players set $tmp tmp 0
function effects:system/pick/ {id:14}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute as @a if score @s playerdata = @e[tag=magic19coretmp,limit=1] owner run tag @s add buffer
execute if score $tmp tmp matches 0 run function effects:system/gain/ {id:14,level:3,duration:60}
execute if score $tmp tmp matches 1.. run function effects:system/modify/ {id:14,level:0,duration:10}
