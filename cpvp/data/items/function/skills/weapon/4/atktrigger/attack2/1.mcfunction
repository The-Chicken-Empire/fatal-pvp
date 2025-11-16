#cc増加
execute if entity @s[tag=meleeatker,tag=atker] run function items:skills/weapon/4/ccincrease
#自分の体力が50%以下の時、ダメージ量増加
scoreboard players operation $tmp2 tmp = @n[tag=victim] hp
scoreboard players operation $tmp2 tmp *= $100 main
scoreboard players operation $tmp2 tmp /= @n[tag=victim] maxhp

execute if score $tmp2 tmp matches ..20 run scoreboard players add $damageadd damagecalc 50
scoreboard players reset $tmp2 tmp