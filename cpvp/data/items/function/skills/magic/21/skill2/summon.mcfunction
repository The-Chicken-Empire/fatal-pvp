
data modify entity @s NoAI set value 1b
data modify entity @s Silent set value 1b
tag @s add playing
tag @s add magic21
data modify entity @s Size set value 3
#effect give @s invisibility infinite 1 true
function system:initialize
scoreboard players operation @s owner = @a[tag=cp.owner] playerdata
scoreboard players operation @s teamscore = @a[tag=cp.owner] teamscore
scoreboard players set @s hp 10
scoreboard players set @s maxhp 10