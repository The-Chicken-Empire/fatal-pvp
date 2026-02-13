tag @s add atkertmp
tag @s add meleeatker
tag @s add meleeatkertmp2
execute as @e[type=#main:non_player] run function system:entity/check_attacked/check_number_0
tag @s remove atkertmp
tag @e[tag=victimtmp] remove victimtmp
advancement revoke @s only system:entity/phe