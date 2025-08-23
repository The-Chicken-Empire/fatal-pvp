execute at @s run particle dust{color:4456562,scale:0.2} ~ ~ ~ 0.2 0.3 0.2 0.1 1 normal

execute at @s run tp @s ~ ~ ~ ~ 90
attribute @s jump_strength modifier add stun -10 add_value
effect give @s blindness infinite 1