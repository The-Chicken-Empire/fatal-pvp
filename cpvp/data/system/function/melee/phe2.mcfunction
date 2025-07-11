scoreboard players operation @s meleeattacker = @a[tag=meleeatkertmp,limit=1] playerdata
#data取得
execute store result storage cpvp:tmp player byte 1 run scoreboard players get @s playerdata
function system:melee/getattackdata with storage cpvp:tmp
data remove storage cpvp:tmp player

tag @s add meleevictimtmp2
tag @s remove meleevictimtmp