#演出
function effects:system/modify/ {id:21,duration:10,level:1}
particle minecraft:dripping_lava ~ ~ ~ 7 7 7 0 5000 force
playsound block.anvil.place block @a ~ ~ ~ 2 1.7
playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 2 0.7

#マーカー
summon marker ~ ~ ~ {Tags:["skillmarker","weapon18","tmp"]}
scoreboard players operation @n[tag=tmp] teamscore = @s teamscore
scoreboard players operation @n[tag=tmp] owner = @s playerdata
tag @n[tag=tmp] remove tmp

tag @s add weapon18player

#武器変化
clear @s *[custom_data~{id:18b,item_type:"weapon"}]

item replace entity @s weapon.mainhand with carrot_on_a_stick

item modify entity @s weapon.mainhand items:generate/weapon/17/item
item modify entity @s weapon.mainhand items:generate/weapon/17/name
item modify entity @s weapon.mainhand items:generate/weapon/17/custom_data
item modify entity @s weapon.mainhand items:generate/weapon/17/stats
item modify entity @s weapon.mainhand items:generate/weapon/17/ability
item modify entity @s weapon.mainhand items:generate/weapon/17/parts
item modify entity @s weapon.mainhand items:generate/weapon/17/flavor
item modify entity @s weapon.mainhand items:generate/weapon/17/others
