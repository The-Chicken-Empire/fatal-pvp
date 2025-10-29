#sneakcheck
execute if predicate items:sneak run function items:skills/magic/41/sneak_click
execute unless predicate items:sneak run function items:skills/magic/41/nosneak

#つかったよ！
scoreboard players reset $check main
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost