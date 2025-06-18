#幸運 被ダメージ軽減 lv*10%
#不運 被ダメージ増加 lv*10%
#村の英雄 与ダメージ増加 lv*10%
#不吉な予感 与ダメージ減少 lv*10%
#試練の予感 クリティカル確率上昇 lv*2%

#reset
scoreboard players set $damagecalc damagecalc 0
scoreboard players set $damagecalc2 damagecalc 0

#与ダメージ者damage処理
execute if entity @s[tag=victim,tag=magicdamage] run scoreboard players operation $damagecalc damagecalc += @a[tag=atker,limit=1] magicdmg
execute if entity @s[tag=victim,tag=physicaldamage] run scoreboard players operation $damagecalc damagecalc += @a[tag=atker,limit=1] physicaldmg
execute if entity @s[tag=victim,tag=meleedamage] run scoreboard players operation $damagecalc damagecalc += @a[tag=atker,limit=1] meleedmg
execute if entity @s[tag=victim,tag=rangedamage] run scoreboard players operation $damagecalc damagecalc += @a[tag=atker,limit=1] rangedmg
scoreboard players operation $damagecalc damagecalc += @a[tag=atker,limit=1] damage
#被ダメージ者defence処理
execute if entity @s[tag=victim,tag=magicdamage] run scoreboard players operation $damagecalc damagecalc -= @s magicdef
execute if entity @s[tag=victim,tag=physicaldamage] run scoreboard players operation $damagecalc damagecalc -= @s physicaldef
execute if entity @s[tag=victim,tag=meleedamage] run scoreboard players operation $damagecalc damagecalc -= @s meleedef
execute if entity @s[tag=victim,tag=rangedamage] run scoreboard players operation $damagecalc damagecalc -= @s rangedef
scoreboard players operation $damagecalc damagecalc -= @s defence
#特殊ダメージ処理
execute if entity @s[tag=victim,tag=specialdamage] run scoreboard players operation $damagecalc damagecalc /= $2 main

#effect処理
execute store result score $dummy2 damagecalc run data get entity @a[tag=atker,limit=1] active_effects[{id:"minecraft:hero_of_the_village"}].amplifier
scoreboard players operation $damagecalc2 damagecalc += $dummy2 damagecalc
execute store result score $dummy2 damagecalc run data get entity @a[tag=atker,limit=1] active_effects[{id:"minecraft:hbad_omen"}].amplifier
scoreboard players operation $damagecalc2 damagecalc -= $dummy2 damagecalc
execute store result score $dummy2 damagecalc run data get entity @s active_effects[{id:"minecraft:unluck"}].amplifier
scoreboard players operation $damagecalc2 damagecalc += $dummy2 damagecalc
execute store result score $dummy2 damagecalc run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier
scoreboard players operation $damagecalc2 damagecalc -= $dummy2 damagecalc

#倍率調整
scoreboard players operation $damagecalc damagecalc += $100 main

#最大def処理
execute if score $damagecalc damagecalc matches ..20 run scoreboard players set $damagecalc damagecalc 20

scoreboard players operation $damagecalc2 damagecalc *= $10 main
#特殊ダメージのeffect半減処理
execute if entity @s[tag=victim,tag=specialdamage] run scoreboard players operation $damagecalc2 damagecalc /= $2 main
scoreboard players operation $damagecalc2 damagecalc += $100 main

#agi処理
execute store result score $dummy random run random value 1..100
execute if score $dummy random <= @s agi at @s run playsound entity.breeze.wind_burst master @a ~ ~ ~ 1 1.5
execute if score $dummy random <= @s agi run particle minecraft:white_smoke ~ ~1 ~ 0.1 0.8 0.1 0.2 20
execute if score $dummy random <= @s agi run function damage:avoid
execute if score $dummy random <= @s agi run return fail

#crit処理
function damage:critical

#100倍*2->1/10000
scoreboard players operation @s damagetaken *= $damagecalc damagecalc
scoreboard players operation @s damagetaken *= $damagecalc2 damagecalc
scoreboard players operation @s damagetaken /= $10000 main
#変換
scoreboard players operation @s damage = @s damagetaken
scoreboard players reset @s damagetaken
#damage処理
function damage:damage
