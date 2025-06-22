#使用回数チェック(mp/ctがあるならこの下)
data modify storage durabilitycheck trigger set value SelectedItem
execute store result score $check main run function items:skills/item/durabilitycheck with storage durabilitycheck
execute if score $check main matches ..0 run function items:skills/item/durability0
execute if score $check main matches ..0 run return fail
scoreboard players reset $check main

#CTcheck
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function system:cooltime/general/check_ct_mainhand
execute unless score $check main matches 1 run function system:cooltime/general/ct_fail
execute unless score $check main matches 1 run return fail
scoreboard players reset $check main
#MPcheck
tag @s add magic3
scoreboard players reset $tmp tmp
execute as @e[distance=..10] unless score @s teamscore = @a[tag=magic3,limit=1] teamscore run scoreboard players add $tmp tmp 1
scoreboard players set @s mpcost 3000
execute store result score $check main run function system:skillcostcheck/skillcostcheck
#起動/失敗
execute if score $check main matches 1 if score $tmp tmp matches 1.. run function items:skills/magic/3/active
execute if score $check main matches 1 unless score $tmp tmp matches 1 run function items:skills/magic/3/fail
#使用後
tag @s remove magic3
scoreboard players reset $tmp tmp
#つかったよ！
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost