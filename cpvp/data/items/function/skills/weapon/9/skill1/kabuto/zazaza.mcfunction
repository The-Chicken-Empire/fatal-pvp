tag @s add cp.tmp


execute if entity @s[tag=!seraph_jajaja_entity] as @a[tag=playing] if score @s playerdata = @e[tag=cp.tmp,limit=1] counter at @s run function items:skills/weapon/9/skill1/kabuto/hit

execute if entity @s[tag=seraph_jajaja_entity] as @e[tag=playing,type=!player] if score @s ID = @e[tag=cp.tmp,limit=1] counter at @s run function items:skills/weapon/9/skill1/kabuto/hit



tag @s remove cp.tmp