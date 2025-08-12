tag @s add magic13tmp3
execute as @a if score @s playerdata = @e[tag=magic13tmp3,limit=1] target run tag @s add magic13targettmp
tp @s @a[tag=magic13targettmp,limit=1]
tp @s ~ ~1 ~
tag @s remove magic13tmp3
tag @a remove magic13targettmp