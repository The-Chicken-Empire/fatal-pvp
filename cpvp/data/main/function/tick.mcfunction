#scoreboard players add $timer timer 1
function system:cooltime/tick
function system:stats_modifier/tick

#void
execute as @e run function system:void

#インベントリ、selecteditem変更時の処理
execute as @a[advancements={system:invchange=true}] run function system:invchange
execute as @a store result score @s selecteditemA run data get entity @s SelectedItemSlot
execute as @a run scoreboard players operation @s selecteditemA -= @s selecteditemB
execute as @a unless score @s selecteditemA matches 0 run function system:invchange
execute as @a if score @s gunreload matches 1.. unless score @s selecteditemA matches 0 run scoreboard players set @s gunreload 0
execute as @a store result score @s selecteditemB run data get entity @s SelectedItemSlot

#常時耐性
effect give @a resistance 42315 10 true
effect give @a saturation 5 10 true

#時間
execute store result score $daytime main run time query daytime
#time add 10

#player死亡時のowner追加
execute as @a[tag=death] run function system:delete

#えんちちの死亡処理


execute as @e[tag=entity_death] at @s run function damage:entity_death

#tick始めdamage処理
execute if entity @a[scores={damageresist=1..},tag=!meleevictimtmp2] as @a[scores={damageresist=1..},tag=!meleevictimtmp2] run function damage:naturaldamage
execute if entity @a[scores={damageresist=1..},tag=meleevictimtmp2] as @a[scores={damageresist=1..},tag=meleevictimtmp2] run function system:melee/getattacker
tag @e remove meleeatkertmp2
#えんちちの死亡処理


execute as @e[tag=entity_death] at @s run function damage:entity_death
#bullet
execute if entity @e[tag=bullet] as @e[tag=bullet] at @s run function items:skills/bullet/bullettick

#タイマー処理
#phase 0-lobby 1-lobby.timer起動 2-start.開始前 3-開始 3.5-star配布 4-収縮開始 5-終了
execute if score $phase main matches 1..3 run function system:timer/timer

#criticalstar使用中
execute as @a[predicate=cstar:cstarcharge] run function cstar:cstarcharge
execute as @a[predicate=cstar:uncstarcharge] run scoreboard players reset @s Cstar

#銃の弾捨て処理
execute if entity @a[predicate=items:gun/dropbullet,limit=1] as @a[predicate=items:gun/dropbullet] unless data entity @s equipment.offhand.components."minecraft:custom_data".cpvp.bullet run function items:skills/gun/dropbullet with entity @s equipment.offhand.components."minecraft:custom_data".cpvp



#3秒
scoreboard players add $3s timer 1
execute if score $3s timer matches 60.. run function system:timer/3s
#3秒
scoreboard players add $5s timer 1
execute if score $5s timer matches 100.. run scoreboard players set $5s timer 0
#10tick
scoreboard players add $10tick timer 1
execute if score $10tick timer matches 10.. run function system:timer/10tick

#afterdamage
execute as @e[scores={afterdamage=0..100}] run scoreboard players add @s afterdamage 1
execute as @e[scores={afterdamage=101..}] run scoreboard players set @s attacker -1
execute as @e[scores={afterdamage=101..}] run scoreboard players set @s afterdamage -1

#hp/mp/engの上限値チェック
execute as @a if score @s hp > @s maxhp run scoreboard players operation @s hp = @s maxhp
execute as @a if score @s mp > @s maxmp run scoreboard players operation @s mp = @s maxmp
execute as @a if score @s eng > @s maxeng run scoreboard players operation @s eng = @s maxeng

#item
execute if entity @e[type=item,tag=!skillmarker] as @e[type=item,tag=!skillmarker] run data modify entity @s PickupDelay set value 0

#bafunoshori
execute as @e[tag=playing,type=!player] run function effects:system/tick/
execute as @a run function effects:system/tick/

#skills

# アイテム系
function items:tick
# スキル用marker用score
execute if entity @e[tag=skillmarker,limit=1] as @e[tag=skillmarker] run scoreboard players add @s skills 1
# スキルmarker用tickファイル
execute if entity @e[tag=skillmarker,limit=1] as @e[tag=skillmarker] at @s run function items:markertick
# スキルtick
function items:skills/tick
#ここにperk44に必要なコマンドを無断で挿入
tag @e remove perk44enemytmp
#actionbar
execute as @a run function system:actionbar/

#is projectile
advancement revoke @a only system:projectile

#sth
execute as @a if score @s absorption matches 1.. run effect give @s absorption 1 0 true
execute as @a unless score @s absorption matches 1.. run effect clear @s absorption
execute as @a run function sth:sth3
execute as @a unless score @s hp = @s hp2 run function sth:sth
execute as @a run scoreboard players operation @s hp2 = @s hp

item replace entity @a player.crafting.0 with air 1
item replace entity @a player.crafting.1 with air 1
item replace entity @a player.crafting.2 with air 1
item replace entity @a player.crafting.3 with air 1

#damagetext
execute as @e[tag=damagetext] at @s run function damage:damagetext/tick

#reset系
advancement revoke @a[advancements={system:projectile=true}] only system:projectile

scoreboard players set @a using 0
scoreboard players set @a sneak 0
scoreboard players set @a jump 0