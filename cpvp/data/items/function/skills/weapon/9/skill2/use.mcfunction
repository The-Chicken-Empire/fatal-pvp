#check
scoreboard players set @s mpcost 1000



execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
function effects:system/pick/ {id:23}
execute store result score #counter counter run data get storage effect: targeteffect.level
execute if score #counter counter matches 15.. if score $check main matches 1 run function items:skills/weapon/9/skill2/discharge
scoreboard players reset #counter
#つかったよ！
scoreboard players reset $check main
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost