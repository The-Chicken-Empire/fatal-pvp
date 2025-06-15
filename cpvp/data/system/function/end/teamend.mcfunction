execute as @a[team=red,tag=alive,limit=1] run scoreboard players set $winteam main 1
execute as @a[team=blue,tag=alive,limit=1] run scoreboard players set $winteam main 2
execute as @a[team=green,tag=alive,limit=1] run scoreboard players set $winteam main 3
execute as @a[team=yellow,tag=alive,limit=1] run scoreboard players set $winteam main 4
execute if score $winteam main matches 1 run title @a title [{"bold":true,"color":"red","text":"Red team"},{"color":"white","text":" win!"}]
execute if score $winteam main matches 2 run title @a title [{"bold":true,"color":"blue","text":"Blue team"},{"color":"white","text":" win!"}]
execute if score $winteam main matches 3 run title @a title [{"bold":true,"color":"green","text":"Green team"},{"color":"white","text":" win!"}]
execute if score $winteam main matches 4 run title @a title [{"bold":true,"color":"yellow","text":"Yellow team"},{"color":"white","text":" win!"}]
execute if score $winteam main matches 1 run execute as @a[team=red,tag=player] run scoreboard players add @s teamwin 1
execute if score $winteam main matches 2 run execute as @a[team=blue,tag=player] run scoreboard players add @s teamwin 1
execute if score $winteam main matches 3 run execute as @a[team=green,tag=player] run scoreboard players add @s teamwin 1
execute if score $winteam main matches 4 run execute as @a[team=yellow,tag=player] run scoreboard players add @s teamwin 1