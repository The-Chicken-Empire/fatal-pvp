tag @s add combatdummy
data modify entity @s NoAI set value 1b
data modify entity @s Silent set value 1b
tag @s add playing

function system:initialize