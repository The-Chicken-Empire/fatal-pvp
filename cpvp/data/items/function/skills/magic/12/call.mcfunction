
tag @s add magic12victimtmp
execute at @s run playsound block.lantern.place hostile @s ~ ~ ~ 1 1.2 1
execute at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 1 2 1
execute at @s summon item_display run function items:skills/magic/12/summonmarker
tag @s remove magic12victimtmp