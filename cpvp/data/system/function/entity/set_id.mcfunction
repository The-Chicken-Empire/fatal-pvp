#>system:entity/set_id
#
# IDが割り振られていないエンティティに対してIDを16桁の2進数を用いて割り振る。
#
# @writes score $init ID
#
# @within system:initialize

# 次のIDが重複していないか調べ、重複していたらIDをランダムな値に変更

execute as @e[tag=initialized] if score @s ID = $init ID run function system:entity/set_id_duplicated

# 次のIDを計算用スコアに取り出す。
scoreboard players operation $tmp tmp = $init ID

#	16桁の2進数で各桁の値が1か0かを表すタグを付与していく。
execute if score $tmp tmp matches 32768.. run tag @s add ID15.1
execute unless score $tmp tmp matches 32768.. run tag @s add ID15.0
execute if score $tmp tmp matches 32768.. run scoreboard players remove $tmp tmp 32768

execute if score $tmp tmp matches 16384.. run tag @s add ID14.1
execute unless score $tmp tmp matches 16384.. run tag @s add ID14.0
execute if score $tmp tmp matches 16384.. run scoreboard players remove $tmp tmp 16384

execute if score $tmp tmp matches 8192.. run tag @s add ID13.1
execute unless score $tmp tmp matches 8192.. run tag @s add ID13.0
execute if score $tmp tmp matches 8192.. run scoreboard players remove $tmp tmp 8192

execute if score $tmp tmp matches 4096.. run tag @s add ID12.1
execute unless score $tmp tmp matches 4096.. run tag @s add ID12.0
execute if score $tmp tmp matches 4096.. run scoreboard players remove $tmp tmp 4096

execute if score $tmp tmp matches 2048.. run tag @s add ID11.1
execute unless score $tmp tmp matches 2048.. run tag @s add ID11.0
execute if score $tmp tmp matches 2048.. run scoreboard players remove $tmp tmp 2048

execute if score $tmp tmp matches 1024.. run tag @s add ID10.1
execute unless score $tmp tmp matches 1024.. run tag @s add ID10.0
execute if score $tmp tmp matches 1024.. run scoreboard players remove $tmp tmp 1024

execute if score $tmp tmp matches 512.. run tag @s add ID9.1
execute unless score $tmp tmp matches 512.. run tag @s add ID9.0
execute if score $tmp tmp matches 512.. run scoreboard players remove $tmp tmp 512

execute if score $tmp tmp matches 256.. run tag @s add ID8.1
execute unless score $tmp tmp matches 256.. run tag @s add ID8.0
execute if score $tmp tmp matches 256.. run scoreboard players remove $tmp tmp 256

execute if score $tmp tmp matches 128.. run tag @s add ID7.1
execute unless score $tmp tmp matches 128.. run tag @s add ID7.0
execute if score $tmp tmp matches 128.. run scoreboard players remove $tmp tmp 128

execute if score $tmp tmp matches 64.. run tag @s add ID6.1
execute unless score $tmp tmp matches 64.. run tag @s add ID6.0
execute if score $tmp tmp matches 64.. run scoreboard players remove $tmp tmp 64

execute if score $tmp tmp matches 32.. run tag @s add ID5.1
execute unless score $tmp tmp matches 32.. run tag @s add ID5.0
execute if score $tmp tmp matches 32.. run scoreboard players remove $tmp tmp 32

execute if score $tmp tmp matches 16.. run tag @s add ID4.1
execute unless score $tmp tmp matches 16.. run tag @s add ID4.0
execute if score $tmp tmp matches 16.. run scoreboard players remove $tmp tmp 16

execute if score $tmp tmp matches 8.. run tag @s add ID3.1
execute unless score $tmp tmp matches 8.. run tag @s add ID3.0
execute if score $tmp tmp matches 8.. run scoreboard players remove $tmp tmp 8

execute if score $tmp tmp matches 4.. run tag @s add ID2.1
execute unless score $tmp tmp matches 4.. run tag @s add ID2.0
execute if score $tmp tmp matches 4.. run scoreboard players remove $tmp tmp 4

execute if score $tmp tmp matches 2.. run tag @s add ID1.1
execute unless score $tmp tmp matches 2.. run tag @s add ID1.0
execute if score $tmp tmp matches 2.. run scoreboard players remove $tmp tmp 2

execute if score $tmp tmp matches 1.. run tag @s add ID0.1
execute unless score $tmp tmp matches 1.. run tag @s add ID0.0

# entityのIDスコアを設定
scoreboard players operation @s ID = $init ID

# IDをインクリメント
scoreboard players add $init ID 1
execute if score $init ID matches 65536.. run scoreboard players set $init ID 0

# 計算用スコアをリセット
scoreboard players reset $tmp tmp