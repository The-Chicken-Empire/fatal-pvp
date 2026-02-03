tag @s add offhand23death
tag @a[tag=!offhand23death] add offhand23mate
execute unless entity @a[tag=offhand23mate] run function items:skills/offhand/23/fail
execute if entity @a[tag=offhand23mate] run function items:skills/offhand/23/tp
tag @s remove offhand23death
tag @a[tag=offhand23mate] remove offhand23mate