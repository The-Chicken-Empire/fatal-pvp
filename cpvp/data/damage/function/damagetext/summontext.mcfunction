data modify entity @s billboard set value center
data modify entity @s brightness set value {block:15,sky:15}
data modify entity @s teleport_duration set value 1
data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0.9f,0.9f,0.9f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}
execute at @s run tp @s ~ ~1 ~
tag @s add damagetext

execute store result score $dtx tmp run random value -10..10
execute store result score $dtz tmp run random value -10..10
execute at @s run function damage:damagetext/x
execute at @s run function damage:damagetext/z
scoreboard players reset $dtx tmp
scoreboard players reset $dtz tmp

scoreboard players operation $dttmp tmp = @e[tag=victim,limit=1] damagepoint
scoreboard players operation $dttmp2 tmp = @e[tag=victim,limit=1] damagepoint
execute if entity @e[tag=naturaldamagetmp] run scoreboard players operation $dttmp tmp = @e[tag=naturaldamagetmp,limit=1] damagepoint
execute if entity @e[tag=naturaldamagetmp] run scoreboard players operation $dttmp2 tmp = @e[tag=naturaldamagetmp,limit=1] damagepoint
scoreboard players operation $dttmp tmp /= $10 main
scoreboard players operation $dttmp2 tmp %= $10 main

execute if entity @e[tag=victim,tag=physicaldamagetmp,tag=!magicdamagetmp] run function damage:damagetext/physical
execute if entity @e[tag=victim,tag=magicdamagetmp,tag=!physicaldamagetmp] run function damage:damagetext/magic
execute if entity @e[tag=victim,tag=physicaldamagetmp,tag=magicdamagetmp] run function damage:damagetext/w
execute if entity @e[tag=victim,tag=specialdamagetmp] run function damage:damagetext/special
execute if entity @e[tag=victim,tag=truedamagetmp] run data modify entity @s text set value [{"score":{objective:"tmp",name:"$dttmp"},"color":"gray"},{"text":".","color":"gray"},{"score":{objective:"tmp",name:"$dttmp2"},"color":"gray"}]
execute if entity @e[tag=naturaldamagetmp] run data modify entity @s text set value [{"score":{objective:"tmp",name:"$dttmp"},"color":"green"},{"text":".","color":"green"},{"score":{objective:"tmp",name:"$dttmp2"},"color":"green"}]


scoreboard players reset $dttmp tmp
scoreboard players reset $dttmp2 tmp