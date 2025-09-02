function effects:system/pick/ {id:5}
execute if data storage effect: targeteffect store result score $damagecalc2 damagecalc run data get storage effect: targeteffect.level 10
scoreboard players operation $damagecalc damagecalc -= $damagecalc2 damagecalc
scoreboard players set $damagecalc2 damagecalc 0
function effects:system/pick/ {id:14}
execute if data storage effect: targeteffect store result score $damagecalc2 damagecalc run data get storage effect: targeteffect.level 10
scoreboard players operation $damagecalc damagecalc += $damagecalc2 damagecalc
scoreboard players set $damagecalc2 damagecalc 0


execute as @a[tag=atker,limit=1] run function effects:system/pick/ {id:4}
execute if data storage effect: targeteffect store result score $damagecalc2 damagecalc run data get storage effect: targeteffect.level 10
scoreboard players operation $damagecalc damagecalc += $damagecalc2 damagecalc
scoreboard players set $damagecalc2 damagecalc 0
execute as @a[tag=atker,limit=1] run function effects:system/pick/ {id:13}
execute if data storage effect: targeteffect store result score $damagecalc2 damagecalc run data get storage effect: targeteffect.level 10
scoreboard players operation $damagecalc damagecalc -= $damagecalc2 damagecalc
scoreboard players set $damagecalc2 damagecalc 0









