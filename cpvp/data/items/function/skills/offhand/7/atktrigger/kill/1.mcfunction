tag @s add offhand7tmp4

execute at @a[tag=victim,limit=1] run playsound minecraft:entity.warden.emerge player @a ~ ~ ~ 1 2 1

execute at @a[tag=victim,limit=1] summon item_display run function items:skills/offhand/7/summonitemdisplay
execute at @a[tag=victim,limit=1] summon item_display run function items:skills/offhand/7/summonitemdisplay2
execute at @a[tag=victim,limit=1] summon item_display run function items:skills/offhand/7/summonitemdisplay3
tag @s remove offhand7tmp4