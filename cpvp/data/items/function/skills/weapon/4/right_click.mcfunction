#変化スキル
scoreboard players set @s mpcost 800
tag @s add w4checktmp
execute if score @s mp >= @s mpcost if entity @e[tag=weapon4] as @e[tag=weapon4] if score @s owner = @e[tag=w4checktmp,limit=1] playerdata run function items:skills/weapon/4/active3
execute if score @s mp >= @s mpcost if entity @e[tag=weapon4-5] as @e[tag=weapon4-5] if score @s owner = @e[tag=w4checktmp,limit=1] playerdata run return run function items:skills/weapon/4/aftertreatment
tag @s remove w4checktmp

#消費mp設定
scoreboard players set @s mpcost 600
#CTcheck
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
execute if score $check main matches 1.. run function items:skills/weapon/4/active
#使用後処理
scoreboard players reset $check main
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost