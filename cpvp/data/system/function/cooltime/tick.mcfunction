#> cpvp:system/cooltime/tick
#
# tick関数 ctカウント用タイマーを動かす
#
# @within cpvp:main/tick


# カウントするだけ
scoreboard players add $ct_timer main 1
execute if score $ct_timer main matches 1000000000.. run scoreboard players operation $ct_timer main %= $1000000000 main

# CT表示
execute as @a run function system:cooltime/show_ct

# @private
#define score_holder $ct_timer