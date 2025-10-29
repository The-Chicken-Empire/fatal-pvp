tag @s add m48hittmp
summon marker ~ ~ ~ {Tags:["m48rotate"]}
execute as @e[tag=m48rotate,limit=1] rotated as @e[tag=m48hittmp,limit=1] run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=!combatdummy] run tp @s @e[tag=magic48tmp3,limit=1]
execute rotated as @e[tag=m48rotate,limit=1] at @s run tp @s ~ ~ ~ ~ ~
kill @e[tag=m48rotate]

#effect
function effects:system/pick/ {id:47}
scoreboard players set $tmp tmp 0
execute store result score $tmp tmp run data get storage effect: targeteffect.level

execute unless score $tmp tmp matches 1.. run function items:skills/magic/48/effect46



scoreboard players set @s damagetaken 50
tag @s add magicdamage
tag @s add meleedamage
scoreboard players operation @s attackerdata = @e[tag=magic48tmp3,limit=1] owner

function damage:atkercheck
tag @s remove magic48hit