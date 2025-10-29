scoreboard players set @s mpcost 800
#CTcheck
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
#高度チェック
execute if score $check main matches 1.. at @s if block ~ ~-0.001 ~ #main:air run function items:skills/magic/29/failcheck
execute if entity @s[tag=m29failed] run return run function items:skills/magic/29/afterfail
#実行
execute if score $check main matches 1.. run function items:skills/magic/29/active

#使用後処理
scoreboard players reset $check main
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost