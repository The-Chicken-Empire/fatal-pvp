tag @s add perk31.mk1.tmp
execute as @a[tag=perk31.skillacting] if score @s playerdata = @e[tag=perk31.mk1.tmp,limit=1] owner run tag @s add perk31.skillacting.tmp
execute if score @s skills matches 40.. as @a[tag=perk31.skillacting.tmp] at @s run tp @s @s
execute if score @s skills matches 40.. as @a[tag=perk31.skillacting.tmp] run attribute @s gravity base set 0
execute unless score @s skills matches ..0 as @a[tag=perk31.skillacting.tmp] run attribute @s minecraft:camera_distance base set 12
execute unless score @s skills matches ..0 at @a[tag=perk31.skillacting.tmp] run particle cherry_leaves ~ ~1 ~ 2 2 2 0 4 force
execute if score @s skills matches 55 at @a[tag=perk31.skillacting.tmp] run playsound minecraft:block.bell.use block @a ~ ~ ~ 10 0
execute if score @s skills matches 55..67 at @a[tag=perk31.skillacting.tmp] run particle minecraft:dust{color:[1,1,1],scale:4} ~ ~4 ~ 10 1.5 10 0 100
execute if score @s skills matches 70 run function items:skills/perk/31/displaysummon
execute if score @s skills matches 90 as @e[tag=perk31.mk2] if score @s owner = @e[tag=perk31.mk1.tmp,limit=1] owner run function items:skills/perk/31/swordactivate1
execute if score @s skills matches 100 as @e[tag=perk31.mk2] if score @s owner = @e[tag=perk31.mk1.tmp,limit=1] owner run function items:skills/perk/31/swordactivate2
execute if score @s skills matches 160 as @a[tag=perk31.skillacting.tmp] run function items:skills/perk/31/truedeath
tag @e[tag=perk31.skillacting.tmp] remove perk31.skillacting.tmp
tag @s remove perk31.mk1.tmp
