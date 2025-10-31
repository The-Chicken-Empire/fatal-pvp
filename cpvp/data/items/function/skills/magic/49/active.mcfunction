tag @s add magic49tmp

execute as @a[tag=playing,distance=..7] run function items:skills/magic/49/debuff

playsound block.beacon.deactivate block @a ~ ~ ~ 1 1.2 0
playsound block.beacon.deactivate block @a ~ ~ ~ 1 0.8 0
playsound block.beacon.deactivate block @a ~ ~ ~ 1 0.4 0
tellraw @a [{text:"[",color:"white"},{selector:"@s"},{text:"] ",color:"white"},{"text":":"},{"text":"落ち着け！","color":"white"}]
execute at @s run particle warped_spore ~ ~1 ~ 0 0 0 1 40 normal


tag @s remove magic49tmp
scoreboard players set $ct main 240
function api:ct/mainhand