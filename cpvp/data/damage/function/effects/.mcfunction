function effects:system/pick/ {id:5}
execute if data storage effect: targeteffect store result score $effect-counter02417417 counter run data get storage effect: targeteffect.level 10
scoreboard players operation $effect-counter02417417 counter *= $-1 main
scoreboard players add $effect-counter02417417 counter 100
scoreboard players operation @s damagetaken *= $effect-counter02417417 counter
scoreboard players operation @s damagetaken /= $100 main
scoreboard players set $effect-counter02417417 counter 0
function effects:system/pick/ {id:14}
execute if data storage effect: targeteffect store result score $effect-counter02417417 counter run data get storage effect: targeteffect.level 10
scoreboard players add $effect-counter02417417 counter 100
scoreboard players operation @s damagetaken *= $effect-counter02417417 counter
scoreboard players operation @s damagetaken /= $100 main
scoreboard players set $effect-counter02417417 counter 0
execute as @a[tag=atker,limit=1] run function effects:system/pick/ {id:4}
execute if data storage effect: targeteffect store result score $effect-counter02417417 counter run data get storage effect: targeteffect.level 10
scoreboard players add $effect-counter02417417 counter 100
scoreboard players operation @s damagetaken *= $effect-counter02417417 counter
scoreboard players operation @s damagetaken /= $100 main
scoreboard players set $effect-counter02417417 counter 0
execute as @a[tag=atker,limit=1] run function effects:system/pick/ {id:13}
execute if data storage effect: targeteffect store result score $effect-counter02417417 counter run data get storage effect: targeteffect.level 10
scoreboard players operation $effect-counter02417417 counter *= $-1 main
scoreboard players add $effect-counter02417417 counter 100
scoreboard players operation @s damagetaken *= $effect-counter02417417 counter
scoreboard players operation @s damagetaken /= $100 main
scoreboard players set $effect-counter02417417 counter 0









