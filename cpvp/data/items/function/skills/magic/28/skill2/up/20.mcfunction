tag @s add cp.this

execute as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner at @s run playsound block.beacon.power_select master @a ^ ^ ^3 1 2
execute as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner at @s run particle flame ~ ~1 ~ 0.1 0.1 0.1 1 100









tag @s remove cp.this