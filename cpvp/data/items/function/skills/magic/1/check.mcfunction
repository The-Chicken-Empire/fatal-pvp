#CTcheck
execute store result score $check main run function system:cooltime/general/check_ct_mainhand
execute unless score $check main matches 1 run function system:cooltime/general/ct_fail
execute unless score $check main matches 1 run return fail
scoreboard players set $check main 0
#MPcheck
scoreboard players set @s mpcost 1800
execute store result score $check main run function system:skillcostcheck/skillcostcheck
execute if score $check main matches 1 run function items:skills/magic/1/active
#つかったよ！
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost
