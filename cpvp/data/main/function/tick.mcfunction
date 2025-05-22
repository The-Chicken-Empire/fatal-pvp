#scoreboard players add $timer timer 1

effect give @a resistance 5 10 true
execute if score $phase main matches 1..3 run function system:timer
execute if score $phase main matches 1 run function system:phase1
execute if score $phase main matches 2 run function system:phase2
execute if score $phase main matches 3 run function system:phase3
execute if score $phase main matches 3 if score $ifstar settings matches 1 if score $nostar main matches 0 run function system:startimer
#phase 0-lobby 1-lobby.timer起動 2-start.開始前 3-開始 3.5-star配布 4-収縮開始 5-終了
execute as @a[predicate=cstar:cstarcharge] run function cstar:cstarcharge
execute as @a[predicate=cstar:uncstarcharge] run scoreboard players reset @s Cstar
scoreboard players set @a sneak 0
scoreboard players add $1s timer 1
execute if score $1s timer matches 20 run function system:1s


execute as @a store result score @s selecteditemA run data get entity @s SelectedItemSlot
execute as @a run scoreboard players operation @s selecteditemA -= @s selecteditemB
execute as @a unless score @s selecteditemA matches 0 run function system:invchange

execute as @a store result score @s selecteditemB run data get entity @s SelectedItemSlot


execute as @a if score @s hp > @s maxhp run scoreboard players operation @s hp = @s maxhp
execute as @a if score @s mp > @s maxmp run scoreboard players operation @s mp = @s maxmp
execute as @a if score @s eng > @s maxeng run scoreboard players operation @s eng = @s maxeng