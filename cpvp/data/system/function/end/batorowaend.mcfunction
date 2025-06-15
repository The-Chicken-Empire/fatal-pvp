title @a title [{"bold":true,"color":"dark_purple","selector":"@a[team=solo,tag=alive]"},{"color":"yellow","text":" win!"}]
execute as @a[team=solo,tag=alive,limit=1] run scoreboard players add @s batorowawin 1
execute as @a[team=solo,tag=alive,limit=1] run scoreboard players add @s totalwin 1