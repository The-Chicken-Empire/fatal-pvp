#scoreboard players add $timer timer 1
function system:cooltime/tick

#常時耐性
effect give @a resistance 5 10 true

#tick始めdamage処理
execute if entity @a[scores={damageresist=1..},tag=!meleevictim] as @a[scores={damageresist=1..},tag=!meleevictim] run function damage:naturaldamage
execute if entity @a[scores={damageresist=1..},tag=meleevictim] as @a[scores={damageresist=1..},tag=meleevictim] run function system:melee/getattacker

#タイマー処理
#phase 0-lobby 1-lobby.timer起動 2-start.開始前 3-開始 3.5-star配布 4-収縮開始 5-終了
execute if score $phase main matches 1..3 run function system:timer/timer
execute if score $phase main matches 1 run function system:phase/phase1/phase1
execute if score $phase main matches 2 run function system:phase/phase2/phase2
execute if score $phase main matches 3 run function system:phase/phase3/phase3
execute if score $phase main matches 3 if score $ifstar settings matches 1 if score $nostar main matches 0 run function system:phase/phase3/startimer

#criticalstar使用中
execute as @a[predicate=cstar:cstarcharge] run function cstar:cstarcharge
execute as @a[predicate=cstar:uncstarcharge] run scoreboard players reset @s Cstar

#?
scoreboard players set @a sneak 0

#1秒
scoreboard players add $3s timer 1
execute if score $3s timer matches 60.. run function system:timer/3s
#10tick
scoreboard players add $10tick timer 1
execute if score $10tick timer matches 10.. run function system:timer/10tick

#selecteditem変更時の処理
execute as @a store result score @s selecteditemA run data get entity @s SelectedItemSlot
execute as @a run scoreboard players operation @s selecteditemA -= @s selecteditemB
execute as @a unless score @s selecteditemA matches 0 run function system:invchange
execute as @a store result score @s selecteditemB run data get entity @s SelectedItemSlot

#hp/mp/engの上限値チェック
execute as @a if score @s hp > @s maxhp run scoreboard players operation @s hp = @s maxhp
execute as @a if score @s mp > @s maxmp run scoreboard players operation @s mp = @s maxmp
execute as @a if score @s eng > @s maxeng run scoreboard players operation @s eng = @s maxeng



#bafunoshori
function buff:tick/main

#skills

function items:tick
execute as @a run function system:actionbar/actionbar

function items:skills/tick
execute as @a[scores={maxeng=..0}] run function system:actionbar/actionbar
execute as @a[scores={maxeng=1..}] run function system:actionbar/actionbar2


#sth
execute as @a run function sth:sth3
execute as @a unless score @s hp = @s hp2 run function sth:sth
execute as @a run scoreboard players operation @s hp2 = @s hp
