execute at @s run playsound entity.player.burp player @s ~ ~ ~ 1 2 1 
title @s title {text:""}
title @s subtitle {color:"red",italic:false,text:"範囲内に対象が居ません！"}
#消去
tag @s remove magic2
#つかったよ！
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost
scoreboard players reset $tmp tmp