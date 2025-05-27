execute if score $startimer main matches 1.. run scoreboard players remove $startimer main 1
scoreboard players operation $startimersec main = $startimer main
scoreboard players operation $startimersec main /= $20 main

execute if score $startimer main matches 140 run tellraw @a [{"color":"yellow","italic":false,"text":"Star"},{"color":"white","italic":false,"text":"配布まで..."}]
execute if score $startimer main matches 100 run tellraw @a {"color":"white","italic":false,"text":"5..."}
execute if score $startimer main matches 100 run playsound ui.button.click master @s
execute if score $startimer main matches 80 run tellraw @a {"color":"white","italic":false,"text":"4..."}
execute if score $startimer main matches 80 run playsound ui.button.click master @s
execute if score $startimer main matches 60 run tellraw @a {"color":"white","italic":false,"text":"3..."}
execute if score $startimer main matches 60 run playsound ui.button.click master @s
execute if score $startimer main matches 40 run tellraw @a {"color":"white","italic":false,"text":"2..."}
execute if score $startimer main matches 40 run playsound ui.button.click master @s
execute if score $startimer main matches 20 run tellraw @a {"color":"white","italic":false,"text":"1..."}
execute if score $startimer main matches 20 run playsound ui.button.click master @s

execute if score $startimer main matches ..0 if score $nostar main matches 0 run function system:phase/phase3/starfall