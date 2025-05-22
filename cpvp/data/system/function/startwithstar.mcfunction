scoreboard players operation $startimer main = $startime settings
scoreboard players operation $startimersec main = $startimer main
scoreboard players operation $startimersec main /= $20 main
execute if score $startimer main matches 0 run function system:starfall
scoreboard players set $nostar main 0


bossbar set gametimer name [{"color":"red","italic":false,"text":"範囲収縮"},{"color":"white","italic":false,"text":"まで"},{"bold":true,"italic":false,"score":{"name":"$timersec","objective":"main"}},{"color":"white","text":"秒"},{"color":"black","italic":false,"text":"|"},{"color":"yellow","text":"Star"},{"color":"white","italic":false,"text":"配布まで"},{"bold":true,"color":"yellow","italic":false,"score":{"name":"$startimersec","objective":"main"}},{"color":"white","italic":false,"text":"秒"}]