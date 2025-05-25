#@s mpcostに使用したいmp量を設定してきてネ
#使った後にuseskill tagを消してネ

execute if score @s mpcost <= @s mp run tag @s add useskill
execute if score @s mpcost <= @s mp run scoreboard players operation @s mp -= @s mpcost
execute if score @s mpcost > @s mp run function system:usemp/mpless