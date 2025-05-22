#幸運 被ダメージ軽減 lv*10%
#不運 被ダメージ増加 lv*10%
#村の英雄 与ダメージ増加 lv*10%
#不吉な予感 与ダメージ減少 lv*10%
#試練の予感 クリティカル確率上昇 lv*2%

#与ダメージ者damage処理
execute if entity @s[tag=victim,tag=magicdamage] run scoreboard players operation $damagecalc damagecalc += @a[tag=atker,limit=1] magicdmg
execute if entity @s[tag=victim,tag=damage] run scoreboard players operation $damagecalc damagecalc += @a[tag=atker,limit=1] normaldmg
execute if entity @s[tag=victim,tag=meleedamage] run scoreboard players operation $damagecalc damagecalc += @a[tag=atker,limit=1] meleedmg
execute if entity @s[tag=victim,tag=rangedamage] run scoreboard players operation $damagecalc damagecalc += @a[tag=atker,limit=1] rangedmg
#被ダメージ者defence処理
execute if entity @s[tag=victim,tag=magicdamage] run scoreboard players operation $damagecalc damagecalc -= @s magicdef
execute if entity @s[tag=victim,tag=damage] run scoreboard players operation $damagecalc damagecalc -= @s normaldef
execute if entity @s[tag=victim,tag=meleedamage] run scoreboard players operation $damagecalc damagecalc -= @s meleedef
execute if entity @s[tag=victim,tag=rangedamage] run scoreboard players operation $damagecalc damagecalc -= @s rangedef

#最大def処理
execute if score $damagecalc damagecalc matches ..20 run scoreboard players set $damagecalc damagecalc 20

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
scoreboard players operation $damagecalc2 damagecalc *= $10 main
#特殊ダメージのeffect半減処理
execute if entity @s[tag=victim,tag=specialdamage] run scoreboard players operation $damagecalc2 damagecalc /= $2 main
scoreboard players operation $damagecalc2 damagecalc += $100 main

#agi処理
execute store result score $dummy random run random value 1..100
execute if score $dummy random <= @s agi run scoreboard players set @s damagetaken 0
execute if score $dummy random <= @s agi at @s run playsound entity.breeze.wind_burst master @a ~ ~ ~ 1 1.5
execute if score $dummy random <= @s agi run particle minecraft:white_smoke ~ ~1 ~ 0.1 0.8 0.1 0.2 20

#crit処理
execute if score @s damagetaken < $0 main run function damage:critical


#100倍*2->1/10000
scoreboard players operation @s damagetaken *= $damagecalc damagecalc
scoreboard players operation @s damagetaken *= $damagecalc2 damagecalc
scoreboard players operation @s damagetaken /= $10000 main
#変換
scoreboard players operation @s damage = @s damagetaken
scoreboard players reset @s damagetaken

function damage:damage