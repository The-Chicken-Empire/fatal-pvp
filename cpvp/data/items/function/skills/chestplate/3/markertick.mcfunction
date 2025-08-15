tag @s add cp3tmp2

execute if score @s skills matches 4 as @a if score @s playerdata = @e[tag=cp3tmp2,limit=1] owner run function items:skills/chestplate/3/heal
execute if score @s skills matches 8 as @a if score @s playerdata = @e[tag=cp3tmp2,limit=1] owner run function items:skills/chestplate/3/heal
execute if score @s skills matches 12 as @a if score @s playerdata = @e[tag=cp3tmp2,limit=1] owner run function items:skills/chestplate/3/heal
execute if score @s skills matches 16 as @a if score @s playerdata = @e[tag=cp3tmp2,limit=1] owner run function items:skills/chestplate/3/heal
execute if score @s skills matches 20 as @a if score @s playerdata = @e[tag=cp3tmp2,limit=1] owner run function items:skills/chestplate/3/heal
execute if score @s skills matches 24 as @a if score @s playerdata = @e[tag=cp3tmp2,limit=1] owner run function items:skills/chestplate/3/heal
execute if score @s skills matches 28 as @a if score @s playerdata = @e[tag=cp3tmp2,limit=1] owner run function items:skills/chestplate/3/heal
execute if score @s skills matches 32 as @a if score @s playerdata = @e[tag=cp3tmp2,limit=1] owner run function items:skills/chestplate/3/heal
execute if score @s skills matches 36 as @a if score @s playerdata = @e[tag=cp3tmp2,limit=1] owner run function items:skills/chestplate/3/heal
execute if score @s skills matches 40 as @a if score @s playerdata = @e[tag=cp3tmp2,limit=1] owner run function items:skills/chestplate/3/heal
execute if score @s skills matches 44 as @a if score @s playerdata = @e[tag=cp3tmp2,limit=1] owner run function items:skills/chestplate/3/heal
execute if score @s skills matches 48 as @a if score @s playerdata = @e[tag=cp3tmp2,limit=1] owner run function items:skills/chestplate/3/heal
execute if score @s skills matches 52 as @a if score @s playerdata = @e[tag=cp3tmp2,limit=1] owner run function items:skills/chestplate/3/heal
execute if score @s skills matches 56 as @a if score @s playerdata = @e[tag=cp3tmp2,limit=1] owner run function items:skills/chestplate/3/heal
execute if score @s skills matches 60 as @a if score @s playerdata = @e[tag=cp3tmp2,limit=1] owner run function items:skills/chestplate/3/heal
execute if score @s skills matches 61.. run kill @s

execute if score @s playerdata = @e[tag=cp3tmp2,limit=1] owner if score @s hp > @s maxhp run scoreboard players operation @s hp = @s maxhp

tag @s remove cp3tmp2