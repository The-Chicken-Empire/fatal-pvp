tag @s add magic41break

execute if entity @s[tag=!m41delete] as @a if score @s playerdata = @e[tag=magic41break,limit=1] owner run scoreboard players remove @s eng 10
execute if entity @s[tag=!m41delete] as @a if score @s playerdata = @e[tag=magic41break,limit=1] owner if score @s eng matches ..0 run scoreboard players set @s eng 0

execute as @e[tag=magic41cord] if score @s target = @e[tag=magic41break,limit=1] entitydata run kill @s
execute at @s run playsound block.end_portal_frame.fill block @a ~ ~ ~ 1 2 0

tag @s remove magic41break