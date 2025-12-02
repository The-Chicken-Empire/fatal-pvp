function effects:system/gain/ {id:44,duration:20,level:5}

execute if score $3s timer matches 1 run function items:skills/boots/6/ccadd
execute if score $5s timer matches 1 run function items:skills/boots/6/damage

execute if score @s boots6 matches 10..19 at @s run particle dust{color:16758319,scale:0.7} ~ ~1 ~ 0.25 0.5 0.25 1 1
execute if score @s boots6 matches 20.. at @s run particle dust_color_transition{from_color:16752175,scale:0.7,to_color:16523810} ~ ~1 ~ 0.25 0.5 0.25 1 1