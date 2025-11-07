tag @e[tag=magic52coretmp] remove magic52coretmp
tag @s remove magic52tmp
execute at @s run playsound block.dispenser.fail block @s ~ ~ ~ 1 1.5 1
title @s title {text:""}
title @s subtitle {"text":"地面が指定位置にありません！","color":"red"}