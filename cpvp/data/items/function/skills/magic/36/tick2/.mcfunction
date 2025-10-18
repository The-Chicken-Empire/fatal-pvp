scoreboard players add @s counter 1
particle dust{color:16746375,scale:1} ^ ^ ^2 2 2 2 0 10
execute positioned 0.0 0.0 0.0 run tp 0-0-0-0-0 ^ ^ ^1



execute if score @s counter matches 40..43 run scoreboard players add @s counter2 1
execute if score @s counter matches 44.. run scoreboard players remove @s counter2 2
execute if score @s counter matches 40.. store result entity @s transformation.scale[0] float 1 run scoreboard players get @s counter2
execute if score @s counter matches 40.. store result entity @s transformation.scale[1] float 1 run scoreboard players get @s counter2
#execute if score @s counter matches 40.. store result entity @s transformation.scale[2] float 1 run scoreboard players get @s counter2
execute if score @s counter matches 50.. run kill