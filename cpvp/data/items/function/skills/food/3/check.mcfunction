
advancement revoke @s only items:foods/3
function items:skills/food/3/replace
#hand
execute if items entity @s weapon.mainhand *[custom_data~{cpvp:{id:3b,item_type:"food"}}] run item replace entity @s weapon.mainhand from block 0 0 0 container.0
execute unless items entity @s weapon.mainhand *[custom_data~{cpvp:{id:3b,item_type:"food"}}] run item replace entity @s weapon.offhand from block 0 0 0 container.0
clear @s *[custom_data~{cpvp:{id:3b,item_type:"food"}}] 1
#CTcheck
scoreboard players set $tmp tmp 0
function effects:system/pick/ {id:33}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 1.. run return run scoreboard players reset $tmp tmp
#active
function items:skills/food/3/eat
