tag @s add m48hittmp
summon marker ~ ~ ~ {Tags:["m48rotate"]}
execute as @e[tag=m48rotate,limit=1] rotated as @e[tag=m48hittmp,limit=1] run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=!combatdummy] run tp @s @e[tag=magic48tmp3,limit=1]
execute rotated as @e[tag=m48rotate,limit=1] at @s run tp @s ~ ~ ~ ~ ~
kill @e[tag=m48rotate]

#effect
execute as @a if score @s playerdata = @e[tag=magic48tmp3,limit=1] owner run tag @s add buffer
function effects:system/pick/ {id:40}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute unless score $tmp tmp matches 4 run function effects:system/gain/ {id:40,level:3,duration:100}
scoreboard players reset $tmp tmp
execute as @a if score @s playerdata = @e[tag=magic48tmp3,limit=1] owner run tag @s add buffer
function effects:system/gain/ {id:11,level:3,duration:100}

scoreboard players set @s damagetaken 50
tag @s add magicdamage
tag @s add meleedamage
scoreboard players operation @s attackerdata = @e[tag=magic48tmp3,limit=1] owner

function damage:atkercheck
tag @s remove magic48hit