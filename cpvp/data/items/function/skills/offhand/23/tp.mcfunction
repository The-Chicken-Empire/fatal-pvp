execute at @s run particle dust_color_transition{from_color:255,to_color:54,scale:1} ~ ~1 ~ 0.4 0.7 0.4 0 30
execute at @s run playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1.3
execute at @s run tp @s @r[tag=offhand23mate]
scoreboard players set @s hp 10

scoreboard players set $ct main 400
function api:ct/offhand