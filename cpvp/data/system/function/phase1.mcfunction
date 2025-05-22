bossbar set minecraft:timer name [{"color":"white","italic":false,"text":"ゲーム開始まで後"},{"color":"aqua","italic":false,"score":{"name":"$timersec","objective":"main"}},{"color":"white","italic":false,"text":"秒です"}]
execute store result bossbar minecraft:timer value run scoreboard players get $timer main
execute if score $timer main matches 200 run title @a title {"color":"white","text":"10"}
execute if score $timer main matches 200 as @a at @s run playsound ui.button.click master @s
execute if score $timer main matches 100 run title @a title {"color":"white","text":"5"}
execute if score $timer main matches 100 as @a at @s run playsound ui.button.click master @s
execute if score $timer main matches 80 run title @a title {"color":"white","text":"4"}
execute if score $timer main matches 80 as @a at @s run playsound ui.button.click master @s
execute if score $timer main matches 60 run title @a title {"color":"white","text":"3"}
execute if score $timer main matches 60 as @a at @s run playsound ui.button.click master @s
execute if score $timer main matches 40 run title @a title {"color":"white","text":"2"}
execute if score $timer main matches 40 as @a at @s run playsound ui.button.click master @s
execute if score $timer main matches 20 run title @a title {"color":"white","text":"1"}
execute if score $timer main matches 20 as @a at @s run playsound ui.button.click master @s
