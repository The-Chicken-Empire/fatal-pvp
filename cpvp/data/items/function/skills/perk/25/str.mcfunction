tag @s add buffer
function effects:system/gain/ {id:4,level:5,duration:100}

execute at @s run playsound item.firecharge.use block @a[distance=..10] ~ ~ ~ 1 1 0
execute at @s run particle block{block_state:redstone_block} ~ ~1 ~ 0 0.4 0 1 22 normal

tellraw @s [{"text":"[星の導き] ","color":"yellow","italic":false},{"text":"攻撃力上昇","color":"red","italic":false},{"text":"を得た！","color":"white","italic":false}]