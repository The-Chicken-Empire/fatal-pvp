#check
execute if predicate items:sneak run function items:skills/magic/35/srcheck
execute unless predicate items:sneak run function items:skills/magic/35/rcheck
#つかったよ！
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost
scoreboard players reset $check main