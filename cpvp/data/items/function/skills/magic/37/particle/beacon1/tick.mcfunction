scoreboard players add @s counter 1


execute if score @s counter matches 1 at @s run function items:skills/magic/37/particle/beacon1/p1
execute if score @s counter matches 5 at @s run function items:skills/magic/37/particle/beacon1/p1
execute if score @s counter matches 9 at @s run function items:skills/magic/37/particle/beacon1/p1
execute if score @s counter matches 13 at @s run function items:skills/magic/37/particle/beacon1/p1
execute if score @s counter matches 17 at @s run function items:skills/magic/37/particle/beacon1/p1
execute if score @s counter matches 21 at @s run function items:skills/magic/37/particle/beacon1/p1
execute if score @s counter matches 25 at @s run function items:skills/magic/37/particle/beacon1/p1
execute if score @s counter matches 29 at @s run function items:skills/magic/37/particle/beacon1/p1


execute if score @s counter matches 8..18 at @s run function items:skills/magic/37/particle/beacon1/p2

execute if score @s counter matches 1 at @s run playsound block.beacon.activate master @a ~ ~ ~ 1 2
execute if score @s counter matches 1 at @s run playsound block.beacon.activate master @a ~ ~ ~ 1 2
execute if score @s counter matches 1 at @s run playsound block.beacon.activate master @a ~ ~ ~ 1 2
execute if score @s counter matches 8 at @s run playsound entity.allay.hurt master @a ~ ~ ~ 1 1
execute if score @s counter matches 12 at @s run playsound entity.allay.hurt master @a ~ ~ ~ 1 1
execute if score @s counter matches 16 at @s run playsound entity.allay.hurt master @a ~ ~ ~ 1 1



execute if score @s counter matches 30 at @s run function items:skills/magic/37/particle/beacon1/p3
execute if score @s counter matches 30 at @s run playsound entity.player.levelup master @a ~ ~ ~ 1 2
execute if score @s counter matches 30 at @s run playsound entity.player.levelup master @a ~ ~ ~ 1 2
execute if score @s counter matches 30 at @s run playsound entity.player.levelup master @a ~ ~ ~ 1 2










execute if score @s counter matches 30.. run kill


