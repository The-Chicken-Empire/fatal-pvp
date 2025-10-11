tag @s add buffer
function effects:system/gain/ {id:1,level:2,duration:160}

execute at @s run playsound entity.firework_rocket.launch block @a[distance=..10] ~ ~ ~ 1 2 0
execute at @s run particle white_smoke ~ ~1 ~ 0 0.4 0 0.6 22 normal

tellraw @s [{"text":"[星の導き] ","color":"yellow","italic":false},{"text":"移動速度上昇","color":"white","italic":false},{"text":"を得た！","color":"white","italic":false}]