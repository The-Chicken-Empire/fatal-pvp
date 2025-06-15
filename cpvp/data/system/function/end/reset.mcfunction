#bossbar解除
bossbar set gametimer visible false
#tag削除
tag @a remove alive
#自動設定
execute if score $autoteam settings matches 1 run function system:end/autoteam
execute if score $autostart settings matches 1.. run function system:end/autostart
execute if score $autostart settings matches 0 run scoreboard players set $phase main 0
#tp
#title
title @a title {"bold":false,"color":"white","text":"ロビーに戻ります"}