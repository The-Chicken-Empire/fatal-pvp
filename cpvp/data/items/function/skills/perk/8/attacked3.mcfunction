execute unless score @s hp >= @s maxhp run return fail

execute if score $maxdamage damagecalc matches -2147483648..2147483647 if score $maxdamage damagecalc matches ..50 run return fail
scoreboard players set $maxdamage damagecalc 50
execute at @s run playsound block.anvil.land block @a ~ ~ ~ 1 2 0