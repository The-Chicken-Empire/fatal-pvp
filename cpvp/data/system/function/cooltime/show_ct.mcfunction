#> system:cooltime/set_xp
#
# メインハンドのCTに合わせてXPレベルを設定する
#
# @within system:cooltime/tick

# メインハンドの残りCTを取得し、秒単位に直す
execute store result score $ct main run function system:cooltime/general/get_ct_mainhand

scoreboard players remove $ct main 1
scoreboard players operation $ct main /= $20 main
scoreboard players add $ct main 1

execute store result storage cpvp:system tmp.xp int 1 run scoreboard players get $ct main

# 得られたCTに基づいてXPレベルを設定
function system:cooltime/set_xp with storage cpvp:system tmp

#リセット
data remove storage cpvp:system tmp
scoreboard players reset $ct main

