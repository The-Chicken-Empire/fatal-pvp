##magic
#1
execute as @e[tag=magic1] run function items:skills/magic/1/markertick
execute as @e[tag=magic1-2] run function items:skills/magic/1/markertick2
execute as @e[tag=magic1ct] if score @s skills matches 40.. run kill @s
#5
execute as @e[tag=magic5] run function items:skills/magic/5/markertick
#9
execute as @e[tag=magic9] run function items:skills/magic/9/markertick
execute as @e[tag=magic9-2] run function items:skills/magic/9/markertick2
execute as @e[tag=magic9-3] run function items:skills/magic/9/markertick3
#10
execute as @e[tag=magic10] run function items:skills/magic/10/markertick
execute as @e[tag=magic10ct] if score @s skills matches 12.. run kill @s
#11
execute as @e[tag=magic11] run function items:skills/magic/11/markertick
execute as @e[tag=magic11-2] run function items:skills/magic/11/markertick2
#12
execute as @e[tag=magic12] run function items:skills/magic/12/markertick
execute as @e[tag=magic12ct] if score @s skills matches 60.. run kill @s
#13
execute as @e[tag=magic13] run function items:skills/magic/13/markertick
execute as @e[tag=magic13marker] if score @s skills matches 20.. run function items:skills/magic/13/markertick3
execute as @e[tag=magic13callmarker] run function items:skills/magic/13/markertick4
execute as @e[tag=magic13markplayer] run function items:skills/magic/13/markertick2
execute as @e[tag=magic13-2] run function items:skills/magic/13/markertick5
execute as @e[tag=magic13deletemark] run function items:skills/magic/13/markertick6

#14
execute as @e[tag=magic14,scores={skills=15..}] run function items:skills/magic/14/markertick
execute as @e[tag=magic14item] run function items:skills/magic/14/markertick2
#15
execute as @e[tag=magic15] run function items:skills/magic/15/markertick
execute as @e[tag=magic15-2] run function items:skills/magic/15/markertick2
execute as @e[tag=magic15-3] run function items:skills/magic/15/markertick3
#17
execute as @e[tag=seraph_overload] run function items:skills/magic/17/skill1/tick
execute as @e[tag=seraph_feather2] run function items:skills/magic/17/skill1/feather/tick
#15
execute as @e[tag=magic16] run function items:skills/magic/16/markertick
execute as @e[tag=magic16-2] run function items:skills/magic/16/markertick2
execute as @e[tag=magic16-3] run function items:skills/magic/16/markertick3
#19
execute as @e[tag=magic19] run function items:skills/magic/19/markertick
#21
execute as @e[tag=magic21] at @s run function items:skills/magic/21/skill2/tick
#26
execute as @e[tag=magic26i] at @s run function items:skills/magic/26/markerticki
execute as @e[tag=magic26f] at @s run function items:skills/magic/26/markertickf
execute as @e[tag=magic26ict] if score @s skills matches 60.. run kill @s
execute as @e[tag=magic26fct] if score @s skills matches 100.. run kill @s
#32
execute as @e[tag=magic32dash] at @s run function items:skills/magic/32/markertick
##weapon
#3
execute as @e[tag=weapon3] run function items:skills/weapon/3/markertick
#4
execute as @e[tag=weapon4] run function items:skills/weapon/4/markertick
execute as @e[tag=weapon4-5] run function items:skills/weapon/4/markertick2
#5
execute as @e[tag=w5marker] run function items:skills/weapon/5/markertick
execute as @e[tag=w5.2marker] run function items:skills/weapon/5/markertick2

#6
execute as @e[tag=weapon6] run function items:skills/weapon/6/markertick
#9
execute as @e[tag=seraph_kabuto] at @s run function items:skills/weapon/9/skill1/kabuto/tick
execute as @e[tag=seraph_jajaja] at @s run function items:skills/weapon/9/skill1/kabuto/tick2
execute as @e[tag=seraph_glaive2] at @s run function items:skills/weapon/9/skill2/tick
##offhand
#6
execute as @e[tag=offhand6] run function items:skills/offhand/6/markertick
#7
execute as @e[tag=offhand7-2] run function items:skills/offhand/7/markertick
execute as @e[tag=offhand7-3] run function items:skills/offhand/7/markertick2
execute as @e[tag=offhand7-4] run function items:skills/offhand/7/markertick3
##helemt
#4
execute as @e[tag=seraph_wing] run function items:skills/helmet/4/wings/auau
##chestplate
execute as @e[tag=cp3d] run function items:skills/chestplate/3/markertick
execute as @e[tag=cp3a] run function items:skills/chestplate/3/markertick2
execute as @e[tag=cp3a2] run function items:skills/chestplate/3/markertick3
##leggings
execute as @e[tag=leggings1] run function items:skills/leggings/1/markertick
##boots
execute as @e[tag=boots5marker] run function items:skills/boots/5/markertick
##perk
#perk11
execute as @e[tag=perk11] run function items:skills/perk/11/markertick
#perk13
execute as @e[tag=perk13] run function items:skills/perk/13/markertick