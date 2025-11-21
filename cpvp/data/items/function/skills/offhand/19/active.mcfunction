scoreboard players set @s offhand19 0
#execute if entity @s[tag=!alive] run return fail
tag @s add offhand19tmp

execute as @a[tag=playing,tag=!offhand19tmp] if score @s teamscore = @a[tag=offhand19tmp,limit=1] teamscore run function items:skills/offhand/19/heal


tag @s remove offhand19tmp