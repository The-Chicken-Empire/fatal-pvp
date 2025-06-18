#>system:initialize
#
# エンティティに対して行う初期化処理をまとめたもの
#
# @within main:tick**

# IDを付与
function system:entity/set_id

# プレイヤに対して初期ステータスを設定
execute as @s[type=player] run function stats:set_players_first_stats

#	モブに対しての初期ステータスを設定
execute as @s[type=!player] run function stats:set_mobs_first_stats

#	initializedタグを付与
tag @s add initialized