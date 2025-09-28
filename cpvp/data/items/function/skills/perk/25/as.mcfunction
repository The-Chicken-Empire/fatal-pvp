tag @s add buffer
function effects:system/gain/ {id:2,level:5,duration:200}

execute at @s run playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 1 2 0
execute at @s run particle block{block_state:gold_block} ~ ~1 ~ 0 0.4 0 1 22 normal

tellraw @s [{"text":"[星の導き] ","color":"yellow","italic":false},{"text":"攻撃速度上昇","color":"yellow","italic":false},{"text":"を得た！","color":"white","italic":false}]