#check
scoreboard players set @s mpcost 700
#MPcheck
execute store result score $check tmp run function system:skillcostcheck/mpcheck
execute unless score $check tmp matches 1 run function system:skillcostcheck/mpless
execute unless score $check tmp matches 1 run return 0
#perk46による消費MP書き換え
execute if items entity @s hotbar.* *[minecraft:custom_data~{cpvp:{id:46b,item_type:"perk"}}] if score $check tmp matches 1 if score @s mpcost matches 100..2200 run function items:skills/perk/46/active

execute if score @s mpcost matches 1.. run function items:triggers/getmpuse/
scoreboard players operation @s mp -= @s mpcost
scoreboard players reset @s mpcost

scoreboard players reset $check tmp
#使用後処理
scoreboard players reset $check main


tag @s add magic63tmp
execute as @e[tag=m63mark] if score @s owner = @a[tag=magic63tmp,limit=1] playerdata run tag @s add m63marktp
execute if entity @e[tag=m63marktp] run return run function items:skills/magic/63/tp

execute summon marker run function items:skills/magic/63/summonmarker
execute at @s run playsound block.tripwire.click_on block @s ~ ~ ~ 1 0.8 1
execute at @s run playsound block.enchantment_table.use block @s ~ ~ ~ 1 0.7 1
execute at @s run playsound block.enchantment_table.use block @s ~ ~ ~ 1 0.7 1