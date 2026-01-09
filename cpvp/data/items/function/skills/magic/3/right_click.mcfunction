

tag @s add magic3
scoreboard players reset $tmp tmp
execute as @e[distance=..25] unless score @s teamscore = @a[tag=magic3,limit=1] teamscore run scoreboard players add $tmp tmp 1
tag @s remove magic3
#起動/失敗
execute if score $check main matches 1 if score $tmp tmp matches ..0 run return run function items:skills/magic/3/fail
#使用後
scoreboard players reset $tmp tmp
#使用回数チェック
data modify storage durabilitycheck trigger set value SelectedItem
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1 run function items:skills/magic/3/active
#つかったよ！
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost