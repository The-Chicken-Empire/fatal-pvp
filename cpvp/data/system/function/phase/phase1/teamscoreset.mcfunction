scoreboard players set $red alives 0
scoreboard players set $blue alives 0
scoreboard players set $green alives 0
scoreboard players set $yellow alives 0
scoreboard players set $solo alives 0
execute as @a[team=red,tag=player] run scoreboard players add $red alives 1
execute as @a[team=blue,tag=player] run scoreboard players add $blue alives 1
execute as @a[team=green,tag=player] run scoreboard players add $green alives 1
execute as @a[team=yellow,tag=player] run scoreboard players add $yellow alives 1
execute as @a[team=solo,tag=player] run scoreboard players add $solo alives 1
execute if score $red alives matches 0 run scoreboard players reset $red alives
execute if score $blue alives matches 0 run scoreboard players reset $blue alives
execute if score $green alives matches 0 run scoreboard players reset $green alives
execute if score $yellow alives matches 0 run scoreboard players reset $yellow alives
execute if score $solo alives matches 0 run scoreboard players reset $solo alives