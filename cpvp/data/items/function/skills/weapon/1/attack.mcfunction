execute unless entity @e[tag=victim,limit=1,tag=meleevictim] run return fail

execute if score @e[tag=victim,limit=1] mp matches -2147483648..2147483647 run function items:skills/weapon/1/player
execute unless score @e[tag=victim,limit=1] mp matches -2147483648..2147483647 run function items:skills/weapon/1/entity