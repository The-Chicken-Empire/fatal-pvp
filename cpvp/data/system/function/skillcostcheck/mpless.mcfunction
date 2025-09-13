execute if data storage cpvp:system unfail run return run data remove storage cpvp:system unfail
#いるもの
execute as @s at @s run playsound block.fire.extinguish master @s ~ ~ ~ 1 2
#要らない物
execute store result score $dummy random run random value 1..100
title @s title {text:""}
execute if score $dummy random matches 6..100 run title @s subtitle {"color":"red","italic":false,"text":"MPが足りない！"}
execute if score $dummy random matches 1 run title @s subtitle {"bold":true,"color":"red","italic":false,"text":"気合が足りない！"}
execute if score $dummy random matches 2 run title @s subtitle {"bold":true,"color":"red","italic":false,"text":"えむぴーがふそくしている！"}
execute if score $dummy random matches 3 run title @s subtitle {"bold":true,"color":"red","italic":false,"text":"お前のインテリジェンスが足りない"}
execute if score $dummy random matches 4 run title @s subtitle {"bold":true,"color":"red","italic":false,"text":"MPとカルシウムが足りない！"}
execute if score $dummy random matches 5 run title @s subtitle {"bold":true,"color":"red","italic":false,"text":"NOT ENOUGH MANA!!!!"}