scoreboard players operation #counter counter = @a[tag=victim,limit=1] hp
scoreboard players set @a[tag=victim,limit=1] hp 1
scoreboard players operation #counter counter *= $-1 main
scoreboard players add @s perk36ct 1
tag @s add perk36this
execute summon marker run function items:skills/perk/36/s2/summon
tag @s remove perk36this