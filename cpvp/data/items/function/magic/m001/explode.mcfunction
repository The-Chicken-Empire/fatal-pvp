#音
execute at @s run playsound entity.firework_rocket.blast master @a ~ ~ ~ 1 1 0
#teammate/攻撃者判定
tag @s add tmp
execute as @a if score @s teamscore = @e[tag=splashbomb,tag=tmp,limit=1] ownerteam run tag @s add teammate
execute as @a if score @s playerdata = @e[tag=splashbomb,tag=tmp,limit=1] owner run tag @s add atker
#被弾者
execute at @s as @a[distance=..4,tag=!teammate] run function items:magic/m001/hit
#解除
tag @a remove teammate
#終了
kill @s