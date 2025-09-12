execute as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner run tag @s add cp.owner
scoreboard players operation @s counter3 = @a[tag=cp.owner,limit=1] hp
scoreboard players operation @s counter4 = @a[tag=cp.owner,limit=1] mp
scoreboard players operation @s counter -= @s counter3
scoreboard players operation @s counter2 -= @s counter4
execute if score @s counter matches ..-1 run scoreboard players set @s counter 0
execute if score @s counter2 matches ..-1 run scoreboard players set @s counter2 0

scoreboard players operation @s counter3 = @s counter
scoreboard players operation @s counter3 *= $100 main
scoreboard players operation @s counter3 /= @a[tag=cp.owner,limit=1] maxhp

execute if score @s counter3 matches ..65 run tellraw @a[tag=cp.owner,limit=1] [{"text":"<生体補完マシンβ>","color":"dark_purple"},{"text":":","color":"white"},{"text":"身体損傷率","color":"blue"},{"score":{"name":"@s","objective":"counter3"},"color":"gold"},{"text":"%","color":"gold"}]
execute if score @s counter3 matches ..65 run tellraw @a[tag=cp.owner,limit=1] [{"text":"<生体補完マシンβ>","color":"dark_purple"},{"text":":","color":"white"},{"text":"損傷ヲ復元シマス","color":"blue"}]

execute if score @s counter3 matches 66.. run tellraw @a[tag=cp.owner,limit=1] [{"text":"<生体補完マシンβ>","color":"dark_purple"},{"text":":","color":"white"},{"text":"身体損傷率","color":"blue"},{"score":{"name":"@s","objective":"counter3"},"color":"gold"},{"text":"%","color":"gold"}]
execute if score @s counter3 matches 66.. run tellraw @a[tag=cp.owner,limit=1] [{"text":"<生体補完マシンβ>","color":"dark_purple"},{"text":":","color":"white"},{"text":"モウチョット被弾ヲオサエテクダサイヘタクソ","color":"blue"}]



scoreboard players operation @s counter /= $2 main
scoreboard players operation @s counter2 /= $2 main
scoreboard players operation @a[tag=cp.owner,limit=1] hp += @s counter
scoreboard players operation @a[tag=cp.owner,limit=1] mp += @s counter2

execute as @a[tag=cp.owner,limit=1] at @s run playsound block.respawn_anchor.deplete master @s ~ ~ ~ 1 0.7
execute as @a[tag=cp.owner,limit=1] at @s run particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.3 0.3 0.3 0.3 20





tag @a[tag=cp.owner] remove cp.owner
tag @s remove cp.this
kill