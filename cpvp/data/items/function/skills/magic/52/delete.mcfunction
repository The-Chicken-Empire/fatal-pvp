execute as @e[tag=magic52id] if score @s target = @e[tag=magic52tmp2,limit=1] markerid run kill @s

particle block_crumble{block_state:cobblestone} ~ ~3 ~ 1.2 2.4 1.2 0 80

kill @s