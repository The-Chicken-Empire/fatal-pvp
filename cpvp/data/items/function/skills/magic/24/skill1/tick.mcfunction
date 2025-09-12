tag @s add cp.this
scoreboard players add @s counter3 1
execute if score @s counter3 matches 3 as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner at @s run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 1.1
execute if score @s counter3 matches 5 as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner at @s run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 1.2
execute if score @s counter3 matches 7 as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner at @s run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 1.3
execute if score @s counter3 matches 11 as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner at @s run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 1.4
execute if score @s counter3 matches 13 as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner at @s run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 1.5
execute if score @s counter3 matches 15 as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner at @s run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 1.6
execute if score @s counter3 matches 17 as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner at @s run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 1.7
execute if score @s counter3 matches 21 as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner at @s run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 1.8
execute if score @s counter3 matches 23 as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner at @s run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 1.9
execute if score @s counter3 matches 25 as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner at @s run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1 2.0
execute if score @s counter3 matches 60.. at @s run function items:skills/magic/24/skill1/wow





tag @s remove cp.this