tag @s add buffer
function effects:system/gain/ {id:43,level:1,duration:300}

execute at @s run playsound entity.cat.ambient block @a[distance=..10] ~ ~ ~ 1 1 0
execute at @s run particle heart ~ ~1 ~ 0 0.4 0 1 12 normal

tellraw @s [{"text":"[星の導き] ","color":"yellow","italic":false},{"text":"再生","color":"light_purple","italic":false},{"text":"を得た！","color":"white","italic":false}]