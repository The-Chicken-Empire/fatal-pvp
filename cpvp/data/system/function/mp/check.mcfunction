#> system:mp/check
#
# MPが足りてるかチェックする
# ここではMPは消費しない
#
# @input int mpcost 消費MP
# @return 0 : MP不足 , 1:MPが足りてる 
# @return score $mpcalc.cost main 消費MP量(バフ効果適用後)
#
# @within items:**

# 前回スコアのリセット
scoreboard players reset $mpcalc.cost main

# 計算用スコアを代入
$scoreboard players set $mpcalc.cost main $(mpcost)

# バフ等により消費MPが増減する場合の処理


# MPが足りているかを出力
return run execute if score $mpcalc.cost main <= @s mp


