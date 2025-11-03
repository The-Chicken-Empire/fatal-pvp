#特殊バフ込みのダメージ計算
execute as @n[tag=victim] run function effects:system/pick/ {id:48}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
scoreboard players operation $tmp tmp *= $7 main
scoreboard players operation $damageadd damagecalc -= $tmp tmp
scoreboard players reset $tmp tmp
