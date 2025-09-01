tag @s add magic9tmp5
execute as @a if score @s playerdata = @e[tag=magic9tmp5,limit=1] owner run tag @s add magic9tmp7
execute as @e if score @s entitydata = @e[tag=magic9tmp5,limit=1] target run tag @s add magic9tmp6
execute as @e[tag=magic9tmp6,limit=1] at @s as @e[tag=playing,tag=!magic9tmp6,distance=..12] unless score @s teamscore = @e[tag=magic9tmp5,limit=1] teamscore run function items:skills/magic/9/hit2


tag @e remove magic9tmp5
tag @e remove magic9tmp6
tag @e remove magic9tmp7