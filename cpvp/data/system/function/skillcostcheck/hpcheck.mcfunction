#@s hpcostに使用したいhp量を設定してきてネ

#mp足りてれば1を、足りてなければ0を返す
execute if score @s hpcost <= @s mp run return 1
execute if score @s hpcost > @s mp run function system:skillcostcheck/mpless
execute if score @s hpcost > @s mp run return 0
