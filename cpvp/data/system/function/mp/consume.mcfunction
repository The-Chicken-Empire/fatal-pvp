#> system:mp/consume
#
# MPを消費する
# MP消費時に共通の処理をする場合にはここをいじる
#
# 基本的にはsystem:mp/check使用後にそのまま利用することを想定
# 
# @input score $mpcalc.cost main 消費MP量(バフ効果適用後)
#
# @within items:**

# MPを減らす
scoreboard players operation @s mp -= $mpcalc.cost main

# MP使用時の処理 
# 想定はデバフなどでMP消費時にダメージを受けるとか
