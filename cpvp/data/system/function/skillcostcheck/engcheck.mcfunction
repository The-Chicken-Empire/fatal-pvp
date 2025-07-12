#@s engcostに使用したいeng量を設定してきてネ

#mp足りてれば1を、足りてなければ0を返す
execute if score @s engcost matches ..0 run return 1
execute if score @s engcost <= @s eng run return 1
execute if score @s engcost > @s eng run function system:skillcostcheck/engless
execute if score @s engcost > @s eng run return 0
