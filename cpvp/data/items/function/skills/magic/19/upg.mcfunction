scoreboard players reset $tmp tmp
tag @s remove magic19check
#MPcheck
scoreboard players set @s mpcost 1000
execute store result score $check tmp run function system:skillcostcheck/mpcheck
execute unless score $check tmp matches 1 run function system:skillcostcheck/mpless
execute unless score $check tmp matches 1 run return 0
scoreboard players reset $check tmp
#eng
scoreboard players set @s engcost 3
execute store result score $check tmp run function system:skillcostcheck/engcheck
execute unless score $check tmp matches 1 run function system:skillcostcheck/engless
execute unless score $check tmp matches 1 run return 0
scoreboard players reset $check tmp
#終わり
tag @s add magic19upgtmp
scoreboard players operation @s mp -= @s mpcost
scoreboard players operation @s eng -= @s engcost

execute as @e[tag=magic19core] if score @s owner = @a[tag=magic19upgtmp,limit=1] playerdata run function items:skills/magic/19/upg2
tag @s remove magic19upgtmp
#つかったよ！
scoreboard players reset $check main
scoreboard players set @s carrotuse 0
scoreboard players reset @s engcost
scoreboard players reset @s mpcost