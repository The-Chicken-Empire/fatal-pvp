execute if score $timer main matches 1.. run scoreboard players remove $timer main 1
scoreboard players operation $timersec main = $timer main
scoreboard players operation $timersec main /= $20 main
execute if score $timer main matches ..0 run function system:timer/timer0