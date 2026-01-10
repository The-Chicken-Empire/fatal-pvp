tag @s remove magic1tmp
execute at @s run playsound block.fire.extinguish block @s ~ ~ ~ 1 1.5 1
title @s title {text:""}
title @s subtitle {"text":"射程内にブロックがありません！","color":"red"}