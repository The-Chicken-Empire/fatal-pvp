tag @s add meleeatker
scoreboard players operation @s meleeattacker = @a[tag=victim,limit=1] playerdata
#武器とかの処理
execute if predicate items:magicweapon run tag @s add magicweapon
advancement revoke @s only system:phe