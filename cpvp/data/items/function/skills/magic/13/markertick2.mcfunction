tag @s add magic13tmp3
execute as @e[tag=playing] if score @s entitydata = @e[tag=magic13tmp3,limit=1] target run tag @s add magic13targettmp
execute at @s run tp @s @e[tag=magic13targettmp,limit=1]
execute at @s run tp @s ~ ~0.8 ~
tag @s remove magic13tmp3
tag @e remove magic13targettmp