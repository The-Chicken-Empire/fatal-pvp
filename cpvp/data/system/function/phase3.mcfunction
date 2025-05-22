execute store result bossbar minecraft:gametimer value run scoreboard players get $timer main

execute if score $nostar main matches 0 run bossbar set gametimer name [{"color":"red","italic":false,"text":"範囲収縮"},{"color":"white","italic":false,"text":"まで"},{"bold":true,"italic":false,"score":{"name":"$timersec","objective":"main"}},{"color":"white","text":"秒"},{"color":"black","italic":false,"text":"|"},{"color":"yellow","text":"Star"},{"color":"white","italic":false,"text":"配布まで"},{"bold":true,"color":"yellow","italic":false,"score":{"name":"$startimersec","objective":"main"}},{"color":"white","italic":false,"text":"秒"}]
execute if score $nostar main matches 1 run bossbar set gametimer name [{"color":"red","italic":false,"text":"範囲収縮"},{"color":"white","italic":false,"text":"まで"},{"bold":true,"italic":false,"score":{"name":"$timersec","objective":"main"}},{"color":"white","text":"秒"}]
execute if score $timer main matches 140 run tellraw @a [{"color":"red","italic":false,"text":"範囲収縮開始"},{"color":"white","italic":false,"text":"まで..."}]
execute if score $timer main matches 100 run tellraw @p {"color":"white","italic":false,"text":"5..."}
execute if score $timer main matches 100 run playsound ui.button.click master @s
execute if score $timer main matches 80 run tellraw @p {"color":"white","italic":false,"text":"4..."}
execute if score $timer main matches 80 run playsound ui.button.click master @s
execute if score $timer main matches 60 run tellraw @p {"color":"white","italic":false,"text":"3..."}
execute if score $timer main matches 60 run playsound ui.button.click master @s
execute if score $timer main matches 40 run tellraw @p {"color":"white","italic":false,"text":"2..."}
execute if score $timer main matches 40 run playsound ui.button.click master @s
execute if score $timer main matches 20 run tellraw @p {"color":"white","italic":false,"text":"1..."}
execute if score $timer main matches 20 run playsound ui.button.click master @s
execute if score $timer main matches ..0 run function system:borderstart