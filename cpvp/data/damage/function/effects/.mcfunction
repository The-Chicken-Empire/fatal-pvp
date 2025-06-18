function buff:check/ {id:5}
execute if data storage buff: check store result score $damagecalc2 damagecalc run data get storage buff: check.level 10
scoreboard players operation $damagecalc damagecalc -= $damagecalc2 damagecalc
scoreboard players set $damagecalc2 damagecalc 0
function buff:check/ {id:14}
execute if data storage buff: check store result score $damagecalc2 damagecalc run data get storage buff: check.level 10
scoreboard players operation $damagecalc damagecalc += $damagecalc2 damagecalc
scoreboard players set $damagecalc2 damagecalc 0
execute as @a[tag=atker,limit=1] run function buff:check/ {id:4}
execute if data storage buff: check store result score $damagecalc2 damagecalc run data get storage buff: check.level 10
scoreboard players operation $damagecalc damagecalc += $damagecalc2 damagecalc
scoreboard players set $damagecalc2 damagecalc 0
execute as @a[tag=atker,limit=1] run function buff:check/ {id:13}
execute if data storage buff: check store result score $damagecalc2 damagecalc run data get storage buff: check.level 10
scoreboard players operation $damagecalc damagecalc -= $damagecalc2 damagecalc
scoreboard players set $damagecalc2 damagecalc 0


