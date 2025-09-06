
#reset
scoreboard players set $damagecalc damagecalc 0
scoreboard players set $damagecalcatk damagecalc 0
scoreboard players set $damagecalcdef damagecalc 0

scoreboard players set $damagecalc2 damagecalc 0
scoreboard players set $damageadd damagecalc 0

execute if entity @e[tag=victim,limit=1,tag=truedamagetmp] run return run function damage:truedamagecalc

#damage1trigger とにかくhitした時
execute as @e[tag=atker] run function items:triggers/attack1/check
execute as @e[tag=victim] run function items:triggers/attacked1/check
execute as @e[tag=atker] run function damage:atktrigger/attack1 with storage atktrigger: hage

#agi処理
execute store result score $dummy random run random value 1..100
###身躱しの装衣の処理をここに挟む
execute if items entity @s armor.chest *[custom_data~{cpvp:{id:6}}] run function items:skills/chestplate/6/
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

#与ダメージ者damage処理
execute if entity @s[tag=victim,tag=magicdamagetmp] run scoreboard players operation $damagecalcatk damagecalc += @a[tag=atker,limit=1] magicdmg
execute if entity @s[tag=victim,tag=physicaldamagetmp] run scoreboard players operation $damagecalcatk damagecalc += @a[tag=atker,limit=1] physicaldmg
execute if entity @s[tag=victim,tag=meleedamagetmp] run scoreboard players operation $damagecalcatk damagecalc += @a[tag=atker,limit=1] meleedmg
execute if entity @s[tag=victim,tag=rangedamagetmp] run scoreboard players operation $damagecalcatk damagecalc += @a[tag=atker,limit=1] rangedmg
scoreboard players operation $damagecalcatk damagecalc += @a[tag=atker,limit=1] damage

scoreboard players operation $damagecalc damagecalc += $damagecalcatk damagecalc

#被ダメージ者defence処理
execute if entity @s[tag=victim,tag=magicdamagetmp] run scoreboard players operation $damagecalcdef damagecalc += @s magicdef
execute if entity @s[tag=victim,tag=physicaldamagetmp] run scoreboard players operation $damagecalcdef damagecalc += @s physicaldef
execute if entity @s[tag=victim,tag=meleedamagetmp] run scoreboard players operation $damagecalcdef damagecalc += @s meleedef
execute if entity @s[tag=victim,tag=rangedamagetmp] run scoreboard players operation $damagecalcdef damagecalc += @s rangedef
scoreboard players operation $damagecalcdef damagecalc += @s defence
#防御貫通
#手前でvictim側に penetrate scoreを突っ込む

scoreboard players set $penetrate damagecalc 100
scoreboard players operation $penetrate damagecalc -= @s penetrate
execute if score $penetrate damagecalc matches ..0 run scoreboard players set $penetrate damagecalc 0
scoreboard players operation $damagecalcdef damagecalc *= $penetrate damagecalc
scoreboard players operation $damagecalcdef damagecalc /= $100 main

scoreboard players set @s penetrate 0

scoreboard players operation $damagecalc damagecalc -= $damagecalcdef damagecalc
#特殊ダメージ処理
execute if entity @s[tag=victim,tag=specialdamagetmp] run scoreboard players operation $damagecalc damagecalc /= $2 main

#resistance strength weakness invulnerableの処理
function damage:effects/

#倍率調整
scoreboard players operation $damagecalc damagecalc += $100 main

#最大def処理
execute if score $damagecalc damagecalc matches ..20 run scoreboard players set $damagecalc damagecalc 20

scoreboard players operation $damagecalc2 damagecalc *= $10 main
#特殊ダメージのeffect半減処理
execute if entity @s[tag=victim,tag=specialdamagetmp] run scoreboard players operation $damagecalc2 damagecalc /= $2 main
scoreboard players operation $damagecalc2 damagecalc += $100 main

#crit処理
function damage:critical

#ダメージ倍率+%
execute if entity @s[tag=specialdamagetmp] run scoreboard players operation $damageadd damagecalc /= $2 main
scoreboard players add $damageadd damagecalc 100
scoreboard players operation @s[tag=victim] damagetaken *= $damageadd damagecalc
scoreboard players operation @s[tag=victim] damagetaken /= $100 main
#100倍*2->1/10000
scoreboard players operation @s damagetaken *= $damagecalc damagecalc
scoreboard players operation @s damagetaken *= $damagecalc2 damagecalc
scoreboard players operation @s damagetaken /= $10000 main

#スキルの処理
##helm4の効果 1.5倍
execute as @a[tag=atker] if items entity @s armor.head golden_hoe[minecraft:custom_data~{cpvp:{id:4b}}] at @s if entity @e[tag=victim,distance=15..] run function items:skills/helmet/4/atk
##offhand11の効果 k倍 (kは0以上の実数)
execute as @a[tag=atker] if items entity @s weapon.offhand end_crystal[minecraft:custom_data~{cpvp:{id:11b}}] if items entity @s weapon.offhand end_crystal[minecraft:custom_data~{cpvp:{item_type:"offhand"}}] run function items:skills/offhand/11/atk




#damage3trigger
execute as @e[tag=atker] run function items:triggers/attack3/check
execute as @e[tag=victim] run function items:triggers/attacked3/check
execute as @e[tag=atker] run function damage:atktrigger/attack3 with storage atktrigger: hage

#　ほ　か
execute if entity @s[tag=victim,tag=magic19buff] run function items:skills/magic/19/counter


#ダメージ上限
execute if score $maxdamage damagecalc matches -2147483648..2147483647 if score @s damagetaken > $maxdamage damagecalc run scoreboard players operation @s damagetaken = $maxdamage damagecalc
scoreboard players reset $maxdamage damagecalc

#変換
scoreboard players operation @s damagepoint = @s damagetaken
scoreboard players reset @s damagetaken
#damage処理
function damage:damage
