tag @s add w5skilltmp2
execute at @s run execute summon marker run function items:skills/weapon/5/markersummon2.2
tag @s remove w5skilltmp2
execute at @s run particle sweep_attack ~ ~ ~ 2 2 2 1 50 force @a
execute at @s run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 1.5
