#CTcheck
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function system:cooltime/general/check_ct_mainhand
execute unless score $check main matches 1 run function system:cooltime/general/ct_fail
execute unless score $check main matches 1 run return fail
scoreboard players reset $check main
#MPcheck
scoreboard players set @s mpcost 500
execute store result score $check main run function system:skillcostcheck/skillcostcheck
execute if score $check main matches 1 run function items:skills/magic/6/active
#つかったよ！
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost
