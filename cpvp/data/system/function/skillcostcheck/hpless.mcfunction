execute if data storage cpvp:system unfail run return run data remove storage cpvp:system unfail
#いるもの
execute as @s at @s run playsound block.fire.extinguish master @s ~ ~ ~ 1 2
title @s title {text:""}
title @s subtitle {"color":"red","italic":false,"text":"HPが足りない！"}

scoreboard players reset @s mpcost
scoreboard players reset @s hpcost
scoreboard players reset @s engcost