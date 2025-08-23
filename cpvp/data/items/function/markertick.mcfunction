##magic
#1
#execute if entity @s[tag=magic1] run function items:skills/magic/1/markertick
#5
execute if entity @s[tag=magic5] run function items:skills/magic/5/markertick
#10
execute if entity @s[tag=magic10] run function items:skills/magic/10/markertick
execute if entity @s[tag=magic10ctplayer] run function items:skills/magic/10/markertick2
execute if entity @s[tag=magic10ctentity] run function items:skills/magic/10/markertick2
#11
execute if entity @s[tag=magic11] run function items:skills/magic/11/markertick
execute if entity @s[tag=magic11-2] run function items:skills/magic/11/markertick2
#12
execute if entity @s[tag=magic12] run function items:skills/magic/12/markertick
execute if entity @s[tag=magic12ct] run function items:skills/magic/12/markertick2
#13
execute if entity @s[tag=magic13] run function items:skills/magic/13/markertick
execute if entity @s[tag=magic13marker] if score @s skills matches 20.. run function items:skills/magic/13/markertick3
execute if entity @s[tag=magic13callmarker] run function items:skills/magic/13/markertick4
execute if entity @s[tag=magic13markplayer] run function items:skills/magic/13/markertick2
execute if entity @s[tag=magic13-2] run function items:skills/magic/13/markertick5
execute if entity @s[tag=magic13deletemark] run function items:skills/magic/13/markertick6
#14
execute if entity @s[tag=magic14,scores={skills=15..}] run function items:skills/magic/14/markertick
execute if entity @s[tag=magic14item] run function items:skills/magic/14/markertick2
##weapon
#3
execute if entity @s[tag=weapon3] run function items:skills/weapon/3/markertick
#4
execute if entity @s[tag=weapon4] run function items:skills/weapon/4/markertick
execute if entity @s[tag=weapon4-5] run function items:skills/weapon/4/markertick2
#5
execute if entity @s[tag=w5marker] run function items:skills/weapon/5/markertick

##chestplate
execute if entity @s[tag=cp3d] run function items:skills/chestplate/3/markertick
execute if entity @s[tag=cp3a] run function items:skills/chestplate/3/markertick2
execute if entity @s[tag=cp3a2] run function items:skills/chestplate/3/markertick3
##leggings
execute if entity @s[tag=leggings1] run function items:skills/leggings/1/markertick