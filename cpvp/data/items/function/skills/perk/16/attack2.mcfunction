scoreboard players operation $tmp tmp = @s hp
scoreboard players operation $tmp tmp *= $100 main
scoreboard players operation $tmp tmp /= @s maxhp
execute if score $tmp tmp matches 25.. run return run scoreboard players reset $tmp tmp

scoreboard players add $damageadd damagecalc 30
execute as @e[tag=victim,limit=1] at @s run particle dust_color_transition{from_color:10092712,to_color:13565952,scale:1} ~ ~ ~ 0.3 0.5 0.3 0 8