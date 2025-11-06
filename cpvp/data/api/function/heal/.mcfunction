#cp17の処理
execute if items entity @a[tag=healer,limit=1,tag=!cp17activated] armor.chest *[custom_data~{cpvp:{id:17b}}] run function items:skills/chestplate/17/s1/








scoreboard players operation $heal counter = @a[tag=healer,limit=1] vit
#scoreboard players operation $heal counter += $100 main
execute if score $heal counter matches ..-1 run scoreboard players set $heal counter 0
#boots17の処理
execute if items entity @s armor.feet *[custom_data~{cpvp:{id:17b,item_type:"boots"}}] run scoreboard players set $heal main 0
scoreboard players operation $heal main *= $heal counter
scoreboard players operation $heal main /= $100 main


scoreboard players operation @s hp += $heal main
scoreboard players reset $heal
execute if score @s hp > @s maxhp run scoreboard players operation @s hp = @s maxhp
tag @a[tag=healer] remove healer