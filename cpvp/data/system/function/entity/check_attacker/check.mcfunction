tag @s add victimtmp
execute as @e[type=#main:non_player] run function system:entity/check_attacker/check_number_0
advancement revoke @s only system:entity/ehp