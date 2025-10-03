scoreboard players add $magic23tmp tmp 1
execute if score $magic23tmp tmp matches 20.. run return run scoreboard players reset $magic23tmp tmp
execute store result score $tmp random run random value 0..100
execute store result score $tmpr random run random value 1..360
execute as @e[tag=magic23center] if score @s markerid = @e[tag=magic23tmp2,limit=1] target run tag @s add magic23tmp4
execute at @s run tp @s @e[tag=magic23tmp4,limit=1]
execute at @s run tp @s ~ ~1 ~ 0 0
tag @e remove magic23tmp4

execute if score $tmpr random matches 180.. at @s run tp @s ~ ~ ~ ~180 ~
execute if score $tmpr random matches 180.. run scoreboard players remove $tmpr random 180
execute if score $tmpr random matches 90.. at @s run tp @s ~ ~ ~ ~90 ~
execute if score $tmpr random matches 90.. run scoreboard players remove $tmpr random 90
execute if score $tmpr random matches 45.. at @s run tp @s ~ ~ ~ ~45 ~
execute if score $tmpr random matches 45.. run scoreboard players remove $tmpr random 45
execute if score $tmpr random matches 22.. at @s run tp @s ~ ~ ~ ~22 ~
execute if score $tmpr random matches 22.. run scoreboard players remove $tmpr random 22
execute if score $tmpr random matches 11.. at @s run tp @s ~ ~ ~ ~11 ~
execute if score $tmpr random matches 11.. run scoreboard players remove $tmpr random 11
execute if score $tmpr random matches 6.. at @s run tp @s ~ ~ ~ ~6 ~
execute if score $tmpr random matches 6.. run scoreboard players remove $tmpr random 6
execute if score $tmpr random matches 3.. at @s run tp @s ~ ~ ~ ~3 ~
execute if score $tmpr random matches 3.. run scoreboard players remove $tmpr random 3
execute if score $tmpr random matches 2.. at @s run tp @s ~ ~ ~ ~2 ~
execute if score $tmpr random matches 2.. run scoreboard players remove $tmpr random 2
execute if score $tmpr random matches 1.. at @s run tp @s ~ ~ ~ ~1 ~
execute if score $tmpr random matches 1.. run scoreboard players remove $tmpr random 1
scoreboard players reset $tmpr random

execute if score $tmp random matches 50.. at @s run tp @s ^ ^ ^5
execute if score $tmp random matches 50.. run scoreboard players remove $tmp random 50
execute if score $tmp random matches 25.. at @s run tp @s ^ ^ ^2.5
execute if score $tmp random matches 25.. run scoreboard players remove $tmp random 25
execute if score $tmp random matches 12.. at @s run tp @s ^ ^ ^1.2
execute if score $tmp random matches 12.. run scoreboard players remove $tmp random 12
execute if score $tmp random matches 6.. at @s run tp @s ^ ^ ^0.6
execute if score $tmp random matches 6.. run scoreboard players remove $tmp random 6
execute if score $tmp random matches 3.. at @s run tp @s ^ ^ ^0.3
execute if score $tmp random matches 3.. run scoreboard players remove $tmp random 3
execute if score $tmp random matches 2.. at @s run tp @s ^ ^ ^0.2
execute if score $tmp random matches 2.. run scoreboard players remove $tmp random 2
execute if score $tmp random matches 1.. at @s run tp @s ^ ^ ^0.1
execute if score $tmp random matches 1.. run scoreboard players remove $tmp random 1
execute if score $tmp random matches 1.. at @s run tp @s ^ ^ ^0.1
execute if score $tmp random matches 1.. run scoreboard players remove $tmp random 1
scoreboard players reset $tmp random

execute at @s unless block ~ ~ ~ #main:air run return run function items:skills/magic/23/callfirepiller

execute at @s positioned ~ ~4 ~ summon item_display run function items:skills/magic/23/summonsoulpiller