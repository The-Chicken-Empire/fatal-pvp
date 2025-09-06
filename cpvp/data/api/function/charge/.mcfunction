##トランジスタの処理
execute if entity @s[tag=perk15] run scoreboard players add $eng main 1


scoreboard players operation @s eng += $eng main
scoreboard players reset $eng
execute if score @s eng > @s maxeng run scoreboard players operation @s eng = @s maxeng