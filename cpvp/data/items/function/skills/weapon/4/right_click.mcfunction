#消費mp設定
scoreboard players set @s mpcost 1400
#CTcheck
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1.. run function items:skills/weapon/4/active
tag @s add w4checktmp
execute unless score $check main matches 1.. if score @s mp > @s mpcost if entity @e[tag=weapon4] as @e[tag=weapon4] if score @s owner = @e[tag=w4checktmp,limit=1] playerdata run function items:skills/weapon/4/active3
#使用後処理
scoreboard players reset $check main
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost