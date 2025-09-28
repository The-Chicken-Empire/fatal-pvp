scoreboard players operation @s mp -= @s mpcost

execute at @s summon marker run function items:skills/magic/32/summonmarker
execute at @s run particle dust_color_transition{from_color:16773428,scale:1.2,to_color:16715021} ~ ~1 ~ 1 1 1 0.1 25
execute at @s run playsound entity.blaze.ambient hostile @a[distance=..12] ~ ~ ~ 1 1.3 0
effect give @s speed infinite 11 true
attribute @s fall_damage_multiplier modifier add magic32 -1000 add_value

scoreboard players set $ct main 260
function api:ct/mainhand

tag @s add magic32dashing