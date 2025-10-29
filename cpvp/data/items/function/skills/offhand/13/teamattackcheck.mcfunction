tag @s add offhand13tmp
execute as @a if score @s teamscore = @a[tag=offhand13tmp,limit=1] teamscore if items entity @s weapon.offhand *[minecraft:custom_data~{cpvp:{id:13b,item_type:"offhand"}}] run function items:skills/offhand/13/teamattack
tag @s remove offhand13tmp