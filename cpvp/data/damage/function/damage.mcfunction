#音
execute at @s run playsound entity.player.hurt player @s ~ ~ ~ 1 1 1
#攻撃主取り消し
scoreboard players reset @s attacker
scoreboard players set @s afterdamage -1
#緩衝体力処理
execute if score @s absorption matches 1.. run function damage:absorption
#体力減少
scoreboard players operation @s hp -= @s damage
#デコイ処理
execute if entity @s[tag=combatdummy] run function damage:combat_dummy
#この辺りに死亡回避処理とか
execute if score @s hp matches ..0 run function items:triggers/death/check
#reset
scoreboard players set @s damage 0
#攻撃主取り出し
execute if score @s hp matches 1.. if entity @a[tag=atker,limit=1] run function damage:getatker
#死亡処理
execute if score @s[type=player] hp matches ..0 run function system:death
execute if score @s[type=!player] hp matches ..0 run function system:entitydeath

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
execute as @e[tag=meleeatker] if score @s playerdata = @e[tag=victim,limit=1] meleeattacker run tag @s remove meleeatker