scoreboard players operation @s mp -= @s mpcost
tag @s add magic5
summon marker ~ ~ ~ {Tags:["skillmarker","magic5"]}
execute as @e[type=marker,tag=magic5,limit=1,sort=nearest,tag=!tagged] run scoreboard players operation @s owner = @a[tag=magic5,limit=1] playerdata
execute as @e[type=marker,tag=magic5,limit=1,sort=nearest] run tag @s add tagged
tag @s remove magic5
function system:cooltime/general/set_ct_mainhand {cooltime:160}