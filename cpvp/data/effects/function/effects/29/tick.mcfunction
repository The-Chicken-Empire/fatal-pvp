execute at @s run particle dust{color:5764351,scale:0.2} ~ ~1.2 ~ 0.1 0.1 0.1 0.1 1 normal
attribute @s jump_strength modifier add magic19 -100 add_value
execute unless entity @s[tag=magic19buff] run tag @s add magic19buff