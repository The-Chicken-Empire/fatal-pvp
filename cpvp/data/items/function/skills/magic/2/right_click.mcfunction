#CTcheck
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function system:cooltime/general/check_ct_mainhand
execute unless score $check main matches 1 run function system:cooltime/general/ct_fail
execute unless score $check main matches 1 run return fail
scoreboard players reset $check main
#MPcheck
tag @s add magic2
scoreboard players reset $tmp tmp
execute as @a[distance=..20] unless score @s teamscore = @a[tag=magic2,limit=1] teamscore run scoreboard players add $tmp tmp 1
scoreboard players operation $tmp tmp *= $7 main
execute if score $tmp tmp matches ..0 run function items:skills/magic/2/fail
execute if score $tmp tmp matches ..0 run return run scoreboard players reset $tmp tmp
scoreboard players operation @s mpcost = $tmp tmp
execute store result score $check main run function system:skillcostcheck/skillcostcheck
execute if score $check main matches 1 run function items:skills/magic/2/active
tag @s remove magic2
scoreboard players reset $tmp tmp
#つかったよ！
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost