#@s engcostに使用したいeng量を設定してきてネ

#mp足りてれば1を、足りてなければ0を返す
execute if score @s engcost <= @s mp run return 1
execute if score @s engcost > @s mp run function system:skillcostcheck/engless
execute if score @s engcost > @s mp run return 0
