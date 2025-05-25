#@s mpcostに使用したいmp量を設定してきてネ

tag @s add useskill
execute if score @s mpcost > @s mp run function system:skillcheck/mpless
execute if score @s mpcost > @s mp run return fail
#execute if score @s mpcost <= @s mp run scoreboard players operation @s mp -= @s mpcost
