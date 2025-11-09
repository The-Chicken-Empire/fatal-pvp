data modify storage cpvp:system unfail set value {unfail:1b}
data modify storage cpvp:system skillslot set value {slot:"chestplate"}
execute store result score $check main run function items:skills/allcheck
execute if score $check main matches 1.. run function items:skills/chestplate/19/addgaze
scoreboard players reset $check main

#特殊バフ込みのダメージ計算
execute as @n[tag=victim] run function effects:system/pick/ {id:48}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
scoreboard players operation $tmp tmp *= $7 main
scoreboard players operation $damageadd damagecalc += $tmp tmp
scoreboard players reset $tmp tmp
