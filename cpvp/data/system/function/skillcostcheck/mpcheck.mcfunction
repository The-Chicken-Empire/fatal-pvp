#@s mpcostに使用したいmp量を設定してきてネ

#mp足りてれば1を、足りてなければ0を返す

##perk48 mp消費二倍
execute if items entity @s hotbar.* *[custom_data~{cpvp:{id:48b,item_type:"perk"}}] run scoreboard players operation @s mpcost *= $2 main

execute if score @s mpcost matches ..0 run return 1
execute if score @s mpcost <= @s mp run return 1
execute if score @s mpcost > @s mp run return 0


#execute if score @s mpcost <= @s mp run 
