tag @s add meleeatkertmp
execute as @e[tag=meleevictimtmp] run function system:melee/phe2
tag @s add meleeatkertmp2
tag @s remove meleeatkertmp
#武器とかの処理
execute if predicate items:magicweapon if entity @s[advancements={system:projectile=false}] run tag @s add magicweapon
advancement revoke @s only system:phe