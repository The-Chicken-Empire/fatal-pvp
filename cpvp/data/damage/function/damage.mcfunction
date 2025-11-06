#音
execute unless entity @s[tag=nodamagesoundtmp] if entity @s[type=player] at @s run playsound entity.player.hurt player @a ~ ~ ~ 1 1 0
#攻撃主取り消し
scoreboard players reset @s attacker
scoreboard players set @s afterdamage -1
#緩衝体力処理
execute if score @s absorption matches 1.. run function damage:absorption
#体力減少
scoreboard players operation @s hp -= @s damagepoint

##特殊処理 magic39 体力を0にする
execute if entity @s[tag=magic39frostbite] run function items:skills/magic/39/frostbite
##magic38
execute as @a[tag=atker] at @s run function items:skills/magic/38/s1/sokusi


#テキスト表示
execute at @s summon text_display run function damage:damagetext/summontext
#デコイ処理
execute if entity @s[tag=combatdummy] run function damage:combat_dummy
#攻撃判定
execute if entity @s[type=!player,tag=!meleeentity] store result score @s tmp run data get entity @s Health
execute if entity @s[type=!player,tag=!meleeentity] run data modify entity @s Health set value 1000
execute if entity @s[type=!player,tag=!meleeentity] run damage @s 1 cactus
execute if entity @s[type=!player,tag=!meleeentity] store result entity @s Health float 1 run scoreboard players get @s tmp
execute if entity @s[type=player,tag=!meleevictim] if entity @s[tag=!nodamagehop] run damage @s 0.00000001 magic
tag @s remove nodamagehop
scoreboard players reset @s tmp
tag @s remove meleeentity
#この辺りに死亡回避処理とか
execute if score @s hp matches ..0 run function items:triggers/death/check
#perk30の死亡回避処理
execute if entity @s[type=player] if score @s hp matches ..0 as @a[tag=playing] if score @s teamscore = @e[tag=victim,limit=1] teamscore if items entity @s hotbar.* *[minecraft:custom_data~{cpvp:{id:30b,item_type:"perk"}}] at @s run function items:skills/perk/30/allydeath
#perk36の死亡回避処理
execute if entity @s[type=player] if score @s hp matches ..0 as @a[tag=playing,tag=alive] unless score @s perk36ct matches 1.. if score @s perk36 = @e[tag=victim,limit=1] playerdata unless score @s playerdata = @e[tag=victim,limit=1] perk36 if items entity @s hotbar.* *[minecraft:custom_data~{cpvp:{id:36b,item_type:"perk"}}] at @s run function items:skills/perk/36/s2/
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

tag @s remove meleevictim

data remove storage atktrigger: hage

scoreboard players set $tmp tmp 0
execute as @e[tag=meleevictim] if score @s attackerdata = @e[tag=atker,limit=1] playerdata run scoreboard players add $tmp tmp 1
execute if score $tmp tmp matches 0 run tag @s remove meleeatker
#perk28処理 30%で追加攻撃
execute unless score $tmp perk28 matches 2.. as @a[tag=atker,limit=1] if items entity @s hotbar.* *[custom_data~{cpvp:{id:28b,item_type:"perk"}}] run function items:skills/perk/28/extra
scoreboard players set $tmp perk28 0