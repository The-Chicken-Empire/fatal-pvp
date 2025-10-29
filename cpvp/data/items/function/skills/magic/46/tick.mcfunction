execute unless score @s magic46using matches 1.. run return fail

execute if score @s magic46using = @s magic46usingprev if score @s magic46using matches 40.. run function items:skills/magic/46/check

execute if score @s magic46using = @s magic46usingprev run function items:skills/magic/46/unequip

scoreboard players operation @s magic46usingprev = @s magic46using