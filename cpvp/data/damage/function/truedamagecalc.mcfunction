scoreboard players operation @s damagepoint = @s damagetaken
scoreboard players reset @s damagetaken

#damage1trigger とにかくhitした時
execute as @e[tag=atker] run function items:triggers/attack1/check
execute as @e[tag=victim] run function items:triggers/attacked1/check
execute as @e[tag=atker] run function damage:atktrigger/attack1 with storage atktrigger: hage

#agi処理
execute store result score $dummy random run random value 1..100
###身躱しの装衣の処理をここに挟む
execute if items entity @s armor.chest iron_chestplate[custom_data~{cpvp:{id:6}}] run function items:skills/chestplate/6/
###
execute if entity @e[tag=victim,tag=unavoidable] run scoreboard players set $dummy random 10000
execute as @a[tag=unavoidable,tag=victim] at @s run playsound block.trial_spawner.ambient_ominous block @s ~ ~ ~ 1 2 1
execute if score $dummy random <= @s agi at @s run playsound entity.breeze.wind_burst master @a ~ ~ ~ 1 1.5
execute if score $dummy random <= @s agi run particle minecraft:white_smoke ~ ~1 ~ 0.1 0.8 0.1 0.2 20
execute if score $dummy random <= @s agi run function damage:avoid
execute if score $dummy random <= @s agi run return fail
tag @s remove unavoidable

#damage2trigger 軽減とか上昇とか
execute as @e[tag=atker] run function items:triggers/attack2/check
execute as @e[tag=victim] run function items:triggers/attacked2/check
execute as @e[tag=atker] run function damage:atktrigger/attack2 with storage atktrigger: hage

#damage3trigger
execute as @e[tag=atker] run function items:triggers/attack3/check
execute as @e[tag=victim] run function items:triggers/attacked3/check
execute as @e[tag=atker] run function damage:atktrigger/attack3 with storage atktrigger: hage

#　ほ　か
execute if entity @s[tag=victim,tag=magic19buff] run function items:skills/magic/19/counter
execute as @a[tag=atker] if items entity @s armor.head golden_hoe[minecraft:custom_data~{cpvp:{id:4b}}] at @s if entity @e[tag=victim,distance=15..] run function items:skills/helmet/4/atk

scoreboard players reset @s damagetaken
#damage処理
function damage:damage