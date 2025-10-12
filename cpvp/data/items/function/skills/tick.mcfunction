#28
execute if entity @a[tag=magic28_sugoi2,limit=1] as @a[tag=magic28_sugoi2] at @s unless block ~ ~-0.0000000000001 ~ #main:air at @s run function items:skills/magic/28/skill2/ff2
execute if entity @a[tag=magic28_sugoi,limit=1] as @a[tag=magic28_sugoi] at @s run function items:skills/magic/28/skill2/ff
#magic35
execute as @a[scores={magic35ct=1..}] run scoreboard players remove @s magic35ct 1
#magic36
execute as @a[tag=playing] if items entity @s hotbar.* *[custom_data~{cpvp:{id:36b,item_type:"perk"}}] run function items:skills/perk/36/s3/_
execute as @a[tag=playing] if items entity @s inventory.* *[custom_data~{cpvp:{id:36b,item_type:"perk"}}] run function items:skills/perk/36/s3/_
execute as @a[tag=playing] if items entity @s weapon.offhand *[custom_data~{cpvp:{id:36b,item_type:"perk"}}] run function items:skills/perk/36/s3/_
scoreboard players remove @a perk36ct 1