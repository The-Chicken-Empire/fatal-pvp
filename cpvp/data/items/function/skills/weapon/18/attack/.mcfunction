tag @s add weapon18playertmp

execute positioned ~ ~1 ~ as @e[tag=playing,distance=..7] unless score @s teamscore = @n[tag=weapon18playertmp] teamscore run function items:skills/weapon/18/attack/hit
#ここから演出関連
execute as @n[tag=weapon18tmp] run tp @s @n[tag=weapon18playertmp]
#particle
execute as @n[tag=weapon18tmp] at @s run function items:skills/weapon/18/attack/particles/
kill @n[tag=weapon18tmp]
scoreboard players reset $tmp tmp

playsound entity.warden.sonic_boom hostile @a ~ ~ ~ 2 1
playsound block.bell.resonate block @a ~ ~ ~ 2 1
playsound entity.allay.death neutral @a ~ ~ ~ 2 1.7

#視線を除去
execute as @e[tag=playing] run function effects:remove {id:48}

tag @s remove weapon18player
tag @s remove weapon18playertmp