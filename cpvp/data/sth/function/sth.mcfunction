scoreboard players operation @s sth = @s hp
scoreboard players operation @s sth *= $400 main
scoreboard players operation @s sth /= @s maxhp
execute store result storage dummy sth float 0.1 run scoreboard players get @s sth
function sth:sth2 with storage dummy