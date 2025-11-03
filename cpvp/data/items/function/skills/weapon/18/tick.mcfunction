execute if score @s weapon18using = @s weapon18prev run function items:skills/weapon/18/check
scoreboard players operation @s weapon18prev = @s weapon18using

tag @s add weapon18playertmp
execute as @e unless score @s teamscore = @n[tag=weapon18playertmp] teamscore at @s run function items:skills/weapon/18/showyourgaze
tag @s remove weapon18playertmp
