#音
execute unless entity @s[tag=nodamagesoundtmp] if entity @s[type=player] at @s run playsound entity.player.hurt player @a ~ ~ ~ 1 1 0
#攻撃主取り消し
scoreboard players reset @s attacker
scoreboard players set @s afterdamage -1
#緩衝体力処理
execute if score @s absorption matches 1.. run function damage:absorption
#体力減少
scoreboard players operation @s hp -= @s damagepoint
#デコイ処理
execute if entity @s[tag=combatdummy] run function damage:combat_dummy
#攻撃判定
execute if entity @s[type=!player,tag=!meleeentity] store result score @s tmp run data get entity @s Health
execute if entity @s[type=!player,tag=!meleeentity] run data modify entity @s Health set value 1000
execute if entity @s[type=!player,tag=!meleeentity] run damage @s 1 cactus
execute if entity @s[type=!player,tag=!meleeentity] store result entity @s Health float 1 run scoreboard players get @s tmp
execute if entity @s[type=player,tag=!meleevictim] if entity @s[tag=!nodamagehop] run damage @s 0.00000001 magic
scoreboard players reset @s tmp
tag @s remove meleeentity
#この辺りに死亡回避処理とか
execute if score @s hp matches ..0 run function items:triggers/death/check
#reset
scoreboard players operation $tmp getdamage = @s damagepoint
scoreboard players set @s damagepoint 0
#攻撃主取り出し
execute if entity @a[tag=atker,limit=1] run function damage:getatker
#死亡処理
execute if score @s[type=player] hp matches ..0 run function system:death
execute if score @s[type=!player] hp matches ..0 run function system:entitydeath
#damaged
execute unless score @s hp matches ..0 run function items:triggers/damaged/check

#attackdata削除
execute store result storage cpvp:tmp tmp byte 1 run scoreboard players get @s playerdata
function system:attackdata/remove with storage cpvp:tmp
data remove storage cpvp:tmp tmp


#tag解除
#tag @s remove physicaldamage
#tag @s remove magicdamage
#tag @s remove meleedamage
#tag @s remove rangedamage
#tag @s remove specialdamage
#tag @s remove critical
#終了
tag @s remove meleevictim

data remove storage atktrigger: hage

scoreboard players set $tmp tmp 0
execute as @e[tag=meleevictim] if score @s attackerdata = @e[tag=atker,limit=1] playerdata run scoreboard players add $tmp tmp 1
execute if score $tmp tmp matches 0 run tag @s remove meleeatker




