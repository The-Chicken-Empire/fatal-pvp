tag @s add cp.this

execute as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner at @s run playsound block.respawn_anchor.set_spawn master @a ^ ^ ^3 1 2
execute as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner at @s run playsound block.respawn_anchor.set_spawn master @a ^ ^ ^3 1 2









tag @s remove cp.this