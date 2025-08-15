data modify storage effect: oh set value 1b
execute store result score #effect-counter0581 counter run data get storage effect: q[0].owner 1

execute if data storage effect: q[0].gain if data storage effect: q[0].player as @a if score @s playerdata = #effect-counter0581 counter run function effects:system/gain/gain with storage effect: q[0]
execute if data storage effect: q[0].gain if data storage effect: q[0].entity as @e[type=!player,tag=initialized] if score @s ID = #effect-counter0581 counter run function effects:system/gain/gain with storage effect: q[0]
execute if data storage effect: q[0].modify if data storage effect: q[0].player as @a if score @s playerdata = #effect-counter0581 counter run function effects:system/modify/modify with storage effect: q[0]
execute if data storage effect: q[0].modify if data storage effect: q[0].entity as @e[type=!player,tag=initialized] if score @s ID = #effect-counter0581 counter run function effects:system/modify/modify with storage effect: q[0]
execute if data storage effect: q[0].remove if data storage effect: q[0].player as @a if score @s playerdata = #effect-counter0581 counter run function effects:system/remove/remove with storage effect: q[0]
execute if data storage effect: q[0].remove if data storage effect: q[0].entity as @e[type=!player,tag=initialized] if score @s ID = #effect-counter0581 counter run function effects:system/remove/remove with storage effect: q[0]