execute at @s run playsound entity.breeze.idle_ground master @a ^ ^ ^3 1 2
execute at @s run playsound entity.breeze.idle_ground master @a ^ ^ ^3 1 2
execute at @s run playsound entity.breeze.idle_ground master @a ^ ^ ^3 1 2
execute at @s run playsound entity.breeze.idle_ground master @a ^ ^ ^3 1 2
execute at @s run playsound entity.breeze.idle_ground master @a ^ ^ ^3 1 2
execute at @s run playsound entity.breeze.idle_ground master @a ^ ^ ^3 1 2
execute at @s run playsound entity.breeze.idle_ground master @a ^ ^ ^3 1 2
execute at @s run playsound entity.breeze.idle_ground master @a ^ ^ ^3 1 2


execute as @a[tag=cp.owner] at @s run tp @s @s
execute as @a[tag=cp.owner] run function api:motion/rotation {power:6}
scoreboard players set @s counter 1
scoreboard players set @s counter2 0
tag @s remove magic28_sugoi2
tag @s add magic28_sugoi
attribute @s jump_strength base set -9999999
attribute @s fall_damage_multiplier base set -9999999
