#@s mpcostに使用したいmp量を設定してきてネ

#mp足りてれば1を、足りてなければ0を返す
execute if score @s mpcost matches ..0 run return 1
execute if score @s mpcost <= @s mp run return 1
execute if score @s mpcost > @s mp run function system:skillcostcheck/mpless
execute if score @s mpcost > @s mp run return 0


#execute if score @s mpcost <= @s mp run scoreboard players operation @s mp -= @s mpcost
