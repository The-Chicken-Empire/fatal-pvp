#消費mp設定
scoreboard players set @s mpcost 700
#CTcheck
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if entity @s[tag=!weapon4hit] if score $check main matches 1.. run function items:skills/weapon/4/active
execute if entity @s[tag=weapon4hit] if score $check main matches 1.. run function items:skills/weapon/4/active2
#使用後処理
scoreboard players reset $check main
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost