scoreboard players set @s magic7timer 0
#失敗
execute if score @s magic7tank matches 15000.. run return fail
execute if score @s mp matches ..999 run return run execute at @s run playsound block.beacon.deactivate player @s ~ ~ ~ 0.7 2 0.7

#起動
scoreboard players remove @s mp 1000
scoreboard players add @s magic7tank 500
execute at @s run playsound block.beacon.activate player @s ~ ~ ~ 0.7 2 0.7