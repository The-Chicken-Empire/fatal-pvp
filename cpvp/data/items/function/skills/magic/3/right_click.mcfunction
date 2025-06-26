#使用回数チェック(mp/ctがあるならこの下)
scoreboard players set @s mpcost 3000
data modify storage durabilitycheck trigger set value SelectedItem
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck

tag @s add magic3
scoreboard players reset $tmp tmp
execute as @e[distance=..10] unless score @s teamscore = @a[tag=magic3,limit=1] teamscore run scoreboard players add $tmp tmp 1

#起動/失敗
execute if score $check main matches 1 if score $tmp tmp matches 1.. run function items:skills/magic/3/active
execute if score $check main matches 1 unless score $tmp tmp matches 1 run function items:skills/magic/3/fail
#使用後
tag @s remove magic3
scoreboard players reset $tmp tmp
#つかったよ！
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost