tag @s add magic53tmp3
data modify entity @s PickupDelay set value 10000000

execute if score @s skills matches 45 at @s run playsound block.stone_button.click_on block @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 35 at @s run playsound block.stone_button.click_on block @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 40 at @s run playsound block.stone_button.click_on block @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 50 at @s run playsound block.stone_button.click_on block @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 55 at @s run playsound block.stone_button.click_on block @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 45 at @s run playsound block.stone_button.click_on block @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 35 at @s run playsound block.stone_button.click_on block @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 40 at @s run playsound block.stone_button.click_on block @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 50 at @s run playsound block.stone_button.click_on block @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 55 at @s run playsound block.stone_button.click_on block @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 45 at @s run playsound block.stone_button.click_on block @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 35 at @s run playsound block.stone_button.click_on block @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 40 at @s run playsound block.stone_button.click_on block @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 50 at @s run playsound block.stone_button.click_on block @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 55 at @s run playsound block.stone_button.click_on block @a ~ ~ ~ 1 1.3 0

execute if score @s skills matches 60 at @s run playsound block.fire.extinguish block @a ~ ~ ~ 1 0.2 0

execute if score @s skills matches 60.. run scoreboard players add @s counting 1
execute if score @s counting matches 5 at @s run playsound block.fire.extinguish block @a ~ ~ ~ 1 0.2 0
execute if score @s counting matches 5 at @s run scoreboard players set @s counting 0
execute if score @s skills matches 60.. at @s run function items:skills/magic/53/hitcheck


tag @s remove magic53tmp3
execute if score @s skills matches 160.. run kill @s