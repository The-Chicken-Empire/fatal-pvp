tag @s add perk36this
execute as @a if score @s playerdata = @a[tag=perk36this,limit=1] perk36 run return run tag @a remove perk36this


effect give @s blindness 2 0 true