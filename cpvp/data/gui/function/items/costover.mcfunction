scoreboard players reset @s itemcost
tellraw @s [{"text":"アイテムのコストが上限に達しています！","italic":false,color:"red"}]
execute at @s run playsound entity.villager.no block @s ~ ~ ~ 1 1.2 1
execute at @s run playsound block.dispenser.fail block @s ~ ~ ~ 1 1.5 1