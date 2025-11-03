tag @s add m47mark.tmp
execute as @e[tag=m47caster] if score @s playerdata = @n[tag=m47mark.tmp] owner run tag @s add m47caster.tmp
#謎のタメ
execute if score @s skills matches ..12 as @n[tag=m47caster.tmp] at @s run tp @s @n[tag=m47mark.tmp]
#発動中
execute if score @s skills matches 12.. as @n[tag=m47caster.tmp] run rotate @s ~ 0
execute if score @s skills matches 12..18 as @n[tag=m47caster.tmp] at @s run function api:motion/rotation_and_y {power:3,y:5}
execute if score @s skills matches 19..26 as @n[tag=m47caster.tmp] at @s run function api:motion/rotation_and_y {power:2,y:3}
execute if score @s skills matches 27..32 as @n[tag=m47caster.tmp] at @s run function api:motion/rotation_and_y {power:1,y:2}
execute if score @s skills matches 12.. at @n[tag=m47caster.tmp] positioned ~-0.7 ~-0.2 ~-0.7 as @e[tag=!m47caster,tag=playing,dx=0.4,dy=1.4,dz=0.4] unless score @s teamscore = @n[tag=m47caster.tmp] teamscore run function items:skills/magic/47/hit
execute if score @s skills matches 12.. at @n[tag=m47caster.tmp] run particle sweep_attack ~ ~1 ~ 2 2 2 0 10 force
execute if score @s skills matches 12.. at @n[tag=m47caster.tmp] run playsound entity.player.attack.weak player @a ~ ~ ~ 2 0
#後処理
execute if score @s skills matches 32.. as @n[tag=m47caster.tmp] run function items:skills/magic/47/removetag
execute if score @s skills matches 32.. run kill @s
tag @s remove m47mark.tmp
