tag @s add buffer
function effects:system/gain/ {id:5,level:3,duration:140}

execute at @s run playsound block.anvil.place block @a[distance=..10] ~ ~ ~ 1 1 0
execute at @s run particle block{block_state:iron_block} ~ ~1 ~ 0 0.4 0 1 22 normal

tellraw @s [{"text":"[星の導き] ","color":"yellow","italic":false},{"text":"耐性","color":"gray","italic":false},{"text":"を得た！","color":"white","italic":false}]