scoreboard players operation $mr counter = @a[tag=healer,limit=1] mr
#scoreboard players operation $mr counter += $100 main
execute if score $mr counter matches ..-1 run scoreboard players set $mr counter 0
scoreboard players operation $mr main *= $mr counter
scoreboard players operation $mr main /= $100 main


scoreboard players operation @s mp += $mr main
scoreboard players reset $mr
execute if score @s mp > @s maxmp run scoreboard players operation @s mp = @s maxmp