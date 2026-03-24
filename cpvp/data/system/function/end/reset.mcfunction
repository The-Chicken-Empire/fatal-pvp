#bossbar解除
bossbar set gametimer visible false
#死亡回数スコア除去
scoreboard players set @a playerdeathcount 0
scoreboard players set @a allydeathcount 0
#tag削除
tag @a remove alive
#自動設定
execute if score $autoteam settings matches 1 if score $teamrule settings matches 1 run function system:end/autoteam
execute if score $teamrule settings matches 0 run function settings:teams/batorowaafter
execute if score $autostart settings matches 1.. run function system:end/autostart
execute if score $autostart settings matches 0 run function system:end/reset2
#tp
#tp @a lobby
#title
tp @a 0 104 0
gamemode adventure @a
#worldborder
worldborder set 1000000 0
worldborder center 0 0