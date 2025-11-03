execute unless predicate items:sneak run return run scoreboard players set @s weapon18using 0
execute unless items entity @s weapon.mainhand *[custom_data~{cpvp:{id:18b,item_type:"weapon"}}] run return run scoreboard players set @s weapon18using 0
execute if score @s weapon18using matches 36.. at @s run function items:skills/weapon/18/activate