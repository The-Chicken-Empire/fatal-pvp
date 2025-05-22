scoreboard players operation @s hp -= @s damage
#execute if score @s hp <= $0 main run function death
scoreboard players reset @s damage
function sth:sth
execute if score @s hp <= $0 main run function system:death