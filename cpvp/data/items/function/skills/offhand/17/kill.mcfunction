scoreboard players operation $tmp tmp = @e[tag=victim,limit=1] mp
scoreboard players operation $tmp tmp /= $1000 main

particle dust_color_transition{from_color:16711680,scale:1,to_color:16748800} ~ ~1 ~ 0.4 0.8 0.4 0 5 normal
particle dust_color_transition{to_color:16514816,scale:1,from_color:16748800} ~ ~1 ~ 0.4 0.8 0.4 0 5 normal
particle dust_color_transition{from_color:16514816,scale:1,to_color:6225664} ~ ~1 ~ 0.4 0.8 0.4 0 5 normal
particle dust_color_transition{to_color:65514,scale:1,from_color:6225664} ~ ~1 ~ 0.4 0.8 0.4 0 5 normal
particle dust_color_transition{from_color:65514,scale:1,to_color:17663} ~ ~1 ~ 0.4 0.8 0.4 0 5 normal
particle dust_color_transition{to_color:7799039,scale:1,from_color:17663} ~ ~1 ~ 0.4 0.8 0.4 0 5 normal
particle dust_color_transition{from_color:7799039,scale:1,to_color:14745855} ~ ~1 ~ 0.4 0.8 0.4 0 5 normal
particle dust_color_transition{to_color:16711778,scale:1,from_color:14745855} ~ ~1 ~ 0.4 0.8 0.4 0 5 normal
particle dust_color_transition{from_color:16711778,scale:1,to_color:16711680} ~ ~1 ~ 0.4 0.8 0.4 0 5 normal

execute at @s run playsound entity.allay.death ambient @s ~ ~ ~ 1 1.3 1
execute at @s run playsound entity.allay.death ambient @s ~ ~ ~ 1 1.3 1