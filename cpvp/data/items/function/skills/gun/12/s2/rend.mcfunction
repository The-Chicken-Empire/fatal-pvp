execute as @a[tag=gun12owner] at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 1 1
#各マーカーを対象の位置に移動する
execute as @e[tag=gun12this] at @s run function items:skills/gun/12/s2/tp
execute as @e[tag=gun12this] at @s run function items:skills/gun/12/s2/collision
kill @e[tag=gun12this]
execute as @e[scores={gun12=1..}] at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 1 1
execute as @e[scores={gun12=1..}] at @s positioned ~ ~1 ~ run function items:skills/weapon/9/skill1/kabuto/particle
execute as @e[scores={gun12=1..}] at @s run function items:skills/gun/12/s2/hit



tag @s remove gun12owner



