tag @a[tag=magic22tmp] add buffer
function effects:system/gain/ {id:27,level:1,duration:200}
tellraw @a[tag=magic22tmp,limit=1] [{"text":"水晶呪","color":"#37d7ff"},{"text":"を付与した！","color":"white"}]
scoreboard players reset $tmp random
execute store result score $tmp random run random value 1..150
execute if score $tmp random matches ..15 run tag @a[tag=magic22tmp] add buffer
execute if score $tmp random matches ..15 run function effects:system/gain/ {id:11,level:2,duration:200}
execute if score $tmp random matches ..15 run tellraw @a[tag=magic22tmp,limit=1] [{"text":"移動速度低下","color":"dark_aqua"},{"text":"を付与した！","color":"white"}]
execute store result score $tmp random run random value 1..150
execute if score $tmp random matches ..15 run tag @a[tag=magic22tmp] add buffer
execute if score $tmp random matches ..15 run function effects:system/gain/ {id:13,level:2,duration:200}
execute if score $tmp random matches ..15 run tellraw @a[tag=magic22tmp,limit=1] [{"text":"弱体化","color":"blue"},{"text":"を付与した！","color":"white"}]
execute store result score $tmp random run random value 1..150
execute if score $tmp random matches ..15 run tag @a[tag=magic22tmp] add buffer
execute if score $tmp random matches ..15 run function effects:system/gain/ {id:14,level:2,duration:200}
execute if score $tmp random matches ..15 run tellraw @a[tag=magic22tmp,limit=1] [{"text":"脆弱","color":"dark_purple"},{"text":"を付与した！","color":"white"}]
execute store result score $tmp random run random value 1..150
execute if score $tmp random matches ..15 run tag @a[tag=magic22tmp] add buffer
execute if score $tmp random matches ..15 run function effects:system/gain/ {id:16,level:2,duration:200}
execute if score $tmp random matches ..15 run tellraw @a[tag=magic22tmp,limit=1] [{"text":"毒","color":"dark_green"},{"text":"を付与した！","color":"white"}]
execute store result score $tmp random run random value 1..150
execute if score $tmp random matches ..15 run tag @a[tag=magic22tmp] add buffer
execute if score $tmp random matches ..15 run function effects:system/gain/ {id:18,level:1,duration:200}
execute if score $tmp random matches ..15 run tellraw @a[tag=magic22tmp,limit=1] [{"text":"発光","color":"white"},{"text":"を付与した！","color":"white"}]
execute store result score $tmp random run random value 1..150
execute if score $tmp random matches ..15 run tag @a[tag=magic22tmp] add buffer
execute if score $tmp random matches ..15 run function effects:system/gain/ {id:35,level:2,duration:200}
execute if score $tmp random matches ..15 run tellraw @a[tag=magic22tmp,limit=1] [{"text":"回復力低下","color":"dark_purple"},{"text":"を付与した！","color":"white"}]
execute store result score $tmp random run random value 1..150
execute if score $tmp random matches ..15 run tag @a[tag=magic22tmp] add buffer
execute if score $tmp random matches ..15 run function effects:system/gain/ {id:36,level:2,duration:200}
execute if score $tmp random matches ..15 run tellraw @a[tag=magic22tmp,limit=1] [{"text":"最大体力減少","color":"dark_red"},{"text":"を付与した！","color":"white"}]
execute store result score $tmp random run random value 1..150
execute if score $tmp random matches ..15 run tag @a[tag=magic22tmp] add buffer
execute if score $tmp random matches ..15 run function effects:system/gain/ {id:37,level:2,duration:200}
execute if score $tmp random matches ..15 run tellraw @a[tag=magic22tmp,limit=1] [{"text":"MP回復力低下","color":"dark_aqua"},{"text":"を付与した！","color":"white"}]
execute store result score $tmp random run random value 1..150
execute if score $tmp random matches ..15 run tag @a[tag=magic22tmp] add buffer
execute if score $tmp random matches ..15 run function effects:system/gain/ {id:38,level:2,duration:200}
execute if score $tmp random matches ..15 run tellraw @a[tag=magic22tmp,limit=1] [{"text":"最大MP減少","color":"dark_blue"},{"text":"を付与した！","color":"white"}]


execute at @s run playsound block.sculk_shrieker.shriek block @a ~ ~ ~ 1 1 0
execute at @s run playsound block.sculk_shrieker.shriek block @a ~ ~ ~ 1 1 0
tag @s remove magic22hittmp