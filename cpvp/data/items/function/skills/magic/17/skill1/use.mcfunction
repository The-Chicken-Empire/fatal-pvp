#check
scoreboard players set @s mpcost 600

function effects:system/pick/ {id:23}
execute store result score #counter counter run data get storage effect: targeteffect.level
execute if score #counter counter matches ..30 run scoreboard players remove @s mpcost 300
scoreboard players reset #counter

execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1 run function items:skills/magic/17/skill1/discharge
#つかったよ！
scoreboard players reset $check main
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost