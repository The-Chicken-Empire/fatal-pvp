#判定
tag @s add perk2
scoreboard players reset $check tmp
execute as @a[distance=..20,tag=playing] unless score @s teamscore = @a[tag=perk2,limit=1] teamscore run tag @s add perk2tg
execute as @a[tag=perk2tg,limit=4] run scoreboard players add @a[tag=perk2] perk2 1
scoreboard players reset $check tmp
#強化判定
function items:skills/perk/2/upgrade
tag @s remove perk2