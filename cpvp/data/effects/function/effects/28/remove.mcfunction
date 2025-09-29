scoreboard players add @s[tag=!perk31.truedeath] tarnished_blood_stage 1

execute if score @s[tag=!perk31.truedeath] tarnished_blood_stage matches 2 run function effects:system/modify/ {id:28,duration:300,level:2}
execute if score @s[tag=!perk31.truedeath] tarnished_blood_stage matches 3 run function effects:system/modify/ {id:28,duration:300,level:3}
execute if score @s[tag=!perk31.truedeath] tarnished_blood_stage matches 4 run function effects:system/modify/ {id:28,duration:300,level:4}
execute if score @s[tag=!perk31.truedeath] tarnished_blood_stage matches 5 run function effects:system/modify/ {id:28,duration:300,level:5}

execute if score @s[tag=!perk31.truedeath] tarnished_blood_stage matches 5.. run function items:skills/perk/31/activation
execute if entity @s[tag=!perk31.truedeath] at @s run playsound minecraft:block.leaf_litter.break block @s ~ ~ ~ 1 0