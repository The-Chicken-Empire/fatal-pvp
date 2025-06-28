##magic

# trigger処理
execute as @a at @s run function items:triggers/tick/check
execute as @a if score @s using matches 1.. at @s run function items:triggers/using/check
execute as @a if score @s carrotuse matches 1.. at @s run function items:triggers/right_click/check