playsound minecraft:block.sweet_berry_bush.pick_berries master @s ~ ~ ~ 1 0
playsound minecraft:block.sweet_berry_bush.pick_berries master @s ~ ~ ~ 1 0
playsound minecraft:block.sweet_berry_bush.pick_berries master @s ~ ~ ~ 1 0
playsound minecraft:block.sweet_berry_bush.pick_berries master @s ~ ~ ~ 1 0

particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.2 0.2 0.2 1 100



scoreboard players set @s damagetaken 1
data modify storage atktrigger: hage set value {itemtype:perk,id:43,atktype:1}
tag @s add physicaldamage
tag @s add meleedamage
scoreboard players operation @s attackerdata = @s playerdata
function damage:atkercheck







function items:generate/gun/14/generate
loot give @s mine 0 0 0 anvil