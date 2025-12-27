
tag @s add magic62timertmp
execute if score @s skills matches ..80 as @a if score @s playerdata = @e[tag=magic62timertmp,limit=1] owner at @s run particle enchant ~ ~1 ~ 0 0 0 0.5 2 normal
execute if score @s skills matches 20 as @a if score @s playerdata = @e[tag=magic62timertmp,limit=1] owner at @s run playsound ui.button.click player @a ~ ~ ~ 1 2 0
execute if score @s skills matches 40 as @a if score @s playerdata = @e[tag=magic62timertmp,limit=1] owner at @s run playsound ui.button.click player @a ~ ~ ~ 1 2 0
execute if score @s skills matches 60 as @a if score @s playerdata = @e[tag=magic62timertmp,limit=1] owner at @s run playsound ui.button.click player @a ~ ~ ~ 1 2 0
execute if score @s skills matches 80 as @a if score @s playerdata = @e[tag=magic62timertmp,limit=1] owner at @s run playsound ui.button.click player @a ~ ~ ~ 1 2 0

execute if score @s skills matches 100.. as @a if score @s playerdata = @e[tag=magic62timertmp,limit=1] owner at @s run function items:skills/magic/62/call
execute if score @s skills matches 101.. run kill @s
tag @s remove magic62timertmp