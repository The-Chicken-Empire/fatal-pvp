#sneakcheck
execute unless predicate items:sneak run function items:skills/magic/41/active

#つかったよ！
scoreboard players reset $check main
scoreboard players set @s carrotuse 0