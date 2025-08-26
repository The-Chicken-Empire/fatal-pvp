execute if score @e[tag=perk11tmp2,limit=1] skills matches ..99 run function items:skills/perk/11/hit1
execute if score @e[tag=perk11tmp2,limit=1] skills matches 100..199 run function items:skills/perk/11/hit2
execute if score @e[tag=perk11tmp2,limit=1] skills matches 200..299 run function items:skills/perk/11/hit3
execute if score @e[tag=perk11tmp2,limit=1] skills matches 300.. run function items:skills/perk/11/hit4
execute as @e[tag=perk11tmp2,limit=1] run kill @s