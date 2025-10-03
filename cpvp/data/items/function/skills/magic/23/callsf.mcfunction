$execute at @s positioned ~$(range) ~ ~ summon item_display run function items:skills/magic/23/summonsf
$execute at @s positioned ~-$(range) ~ ~ summon item_display run function items:skills/magic/23/summonsf
$execute at @s positioned ~ ~ ~$(range) summon item_display run function items:skills/magic/23/summonsf
$execute at @s positioned ~ ~ ~-$(range) summon item_display run function items:skills/magic/23/summonsf

execute at @s run playsound item.firecharge.use block @a[distance=..14] ~ ~ ~ 1 2 0