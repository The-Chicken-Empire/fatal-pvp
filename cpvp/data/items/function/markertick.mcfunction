##magic
#1
execute if entity @s[tag=magic1] run function items:skills/magic/1/markertick
execute if entity @s[tag=magic1-2] run function items:skills/magic/1/markertick2
execute if entity @s[tag=magic1ct] if score @s skills matches 40.. run kill @s
#5
execute if entity @s[tag=magic5] run function items:skills/magic/5/markertick
#9
execute if entity @s[tag=magic9] run function items:skills/magic/9/markertick
execute if entity @s[tag=magic9-2] run function items:skills/magic/9/markertick2
execute if entity @s[tag=magic9-3] run function items:skills/magic/9/markertick3
#10
execute if entity @s[tag=magic10] run function items:skills/magic/10/markertick
execute if entity @s[tag=magic10ct] if score @s skills matches 12.. run kill @s
#11
execute if entity @s[tag=magic11] run function items:skills/magic/11/markertick
execute if entity @s[tag=magic11-2] run function items:skills/magic/11/markertick2
#12
execute if entity @s[tag=magic12] run function items:skills/magic/12/markertick
execute if entity @s[tag=magic12ct] if score @s skills matches 60.. run kill @s
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
execute if entity @s[tag=m14bullet] run function items:skills/magic/14/markertick3

#15
execute if entity @s[tag=magic15] run function items:skills/magic/15/markertick
execute if entity @s[tag=magic15-2] run function items:skills/magic/15/markertick2
execute if entity @s[tag=magic15-3] run function items:skills/magic/15/markertick3
#17
execute if entity @s[tag=seraph_overload] run function items:skills/magic/17/skill1/tick
execute if entity @s[tag=seraph_feather2] run function items:skills/magic/17/skill1/feather/tick
#15
execute if entity @s[tag=magic16] run function items:skills/magic/16/markertick
execute if entity @s[tag=magic16-2] run function items:skills/magic/16/markertick2
execute if entity @s[tag=magic16-3] run function items:skills/magic/16/markertick3
#19
execute if entity @s[tag=magic19core] run function items:skills/magic/19/coretick
execute if entity @s[tag=magic19ray] if score @s skills matches 2 run kill @s
#21
execute if entity @s[tag=magic21] at @s run function items:skills/magic/21/skill2/tick
#23
execute if entity @s[tag=magic23center] if score @s skills matches 25.. run kill @s
execute if entity @s[tag=magic23core] run function items:skills/magic/23/markertick
execute if entity @s[tag=magic23fp] run function items:skills/magic/23/markertick2
execute if entity @s[tag=magic23sfcore] run function items:skills/magic/23/markertick3
execute if entity @s[tag=magic23sf] run function items:skills/magic/23/markertick4
#24
execute if entity @s[tag=magic24] at @s run function items:skills/magic/24/skill1/tick
#25
execute if entity @s[tag=magic25] at @s run function items:skills/magic/25/markertick
#26
execute if entity @s[tag=magic26i] at @s run function items:skills/magic/26/markerticki
execute if entity @s[tag=magic26f] at @s run function items:skills/magic/26/markertickf
execute if entity @s[tag=magic26ict] if score @s skills matches 60.. run kill @s
execute if entity @s[tag=magic26fct] if score @s skills matches 100.. run kill @s
#27
execute if entity @s[tag=magic27totem] at @s run function items:skills/magic/27/markertick
#28
execute if entity @s[tag=magic28] at @s run function items:skills/magic/28/skill2/tick
#29
execute if entity @s[tag=m29marker] at @s run function items:skills/magic/29/markertick
execute if entity @s[tag=m29display] at @s run function items:skills/magic/29/markertick2
#32
execute if entity @s[tag=magic32dash] at @s run function items:skills/magic/32/markertick
#36
execute if entity @s[tag=magic36meteor] at @s run function items:skills/magic/36/tick/
execute if entity @s[tag=magic36mahoujin] at @s run function items:skills/magic/36/tick2/
#37
execute if entity @s[tag=magic37-1] at @s run function items:skills/magic/37/particle/mahoujin/1/tick
#39
execute if entity @s[tag=magic39] at @s run function items:skills/magic/39/markertick
#40
execute if entity @s[tag=magic40] at @s run function items:skills/magic/40/markertick
#41
execute if entity @s[tag=magic41,tag=!m41charged] at @s run function items:skills/magic/41/markertick
execute if entity @s[tag=magic41,tag=m41charged] at @s run function items:skills/magic/41/markertick2
execute if entity @s[tag=magic41bullet] at @s run function items:skills/magic/41/markertick3
execute if entity @s[tag=magic41cord] at @s run function items:skills/magic/41/markertickcord
#43
execute if entity @s[tag=magic43] at @s run function items:skills/magic/43/markertick
execute if entity @s[tag=magic43-2] at @s run function items:skills/magic/43/markertick2
#47
execute if entity @s[tag=m47mark] at @s run function items:skills/magic/47/markertick
#48
execute if entity @s[tag=magic48] at @s run function items:skills/magic/48/markertick2
execute if entity @s[tag=magic48core] at @s run function items:skills/magic/48/markertick
#50
execute if entity @s[tag=magic50] at @s run function items:skills/magic/50/markertick
#51
execute if entity @s[tag=magic51] at @s run function items:skills/magic/51/markertick
#52
execute if entity @s[tag=magic52core] at @s run function items:skills/magic/52/markertick
execute if entity @s[tag=magic52id1] at @s run function items:skills/magic/52/idtick1
execute if entity @s[tag=magic52id2] at @s run function items:skills/magic/52/idtick2
execute if entity @s[tag=magic52id3] at @s run function items:skills/magic/52/idtick3
#53
execute if entity @s[tag=magic53] at @s run function items:skills/magic/53/markertick
##weapon
#3
execute if entity @s[tag=weapon3] run function items:skills/weapon/3/markertick
#4
execute if entity @s[tag=weapon4] run function items:skills/weapon/4/markertick
execute if entity @s[tag=weapon4-5] run function items:skills/weapon/4/markertick2
#5
execute if entity @s[tag=w5marker] run function items:skills/weapon/5/markertick
execute if entity @s[tag=w5.2marker] run function items:skills/weapon/5/markertick2
#18
execute if entity @s[tag=weapon18] run function items:skills/weapon/18/markertick

#6
execute if entity @s[tag=weapon6] run function items:skills/weapon/6/markertick
#9
execute if entity @s[tag=seraph_kabuto] at @s run function items:skills/weapon/9/skill1/kabuto/tick
execute if entity @s[tag=seraph_jajaja] at @s run function items:skills/weapon/9/skill1/kabuto/tick2
execute if entity @s[tag=seraph_glaive2] at @s run function items:skills/weapon/9/skill2/tick
#13
execute if entity @s[tag=w13marker] at @s run function items:skills/weapon/13/s2/tick
##offhand
#6
execute if entity @s[tag=offhand6] run function items:skills/offhand/6/markertick
#7
execute if entity @s[tag=offhand7-2] run function items:skills/offhand/7/markertick
execute if entity @s[tag=offhand7-3] run function items:skills/offhand/7/markertick2
execute if entity @s[tag=offhand7-4] run function items:skills/offhand/7/markertick3
##helemt
#4
execute if entity @s[tag=seraph_wing] run function items:skills/helmet/4/wings/auau
##chestplate
execute if entity @s[tag=cp3d] run function items:skills/chestplate/3/markertick
execute if entity @s[tag=cp3a] run function items:skills/chestplate/3/markertick2
execute if entity @s[tag=cp3a2] run function items:skills/chestplate/3/markertick3
##leggings
execute if entity @s[tag=leggings1] run function items:skills/leggings/1/markertick
##boots
execute if entity @s[tag=boots5marker] run function items:skills/boots/5/markertick
##perk
#perk13
execute if entity @s[tag=perk13] run function items:skills/perk/13/markertick
#30
execute if entity @s[tag=perk30marker] run function items:skills/perk/30/s2/tick
#perk31
execute if entity @s[tag=perk31.mk1] run function items:skills/perk/31/markertick

