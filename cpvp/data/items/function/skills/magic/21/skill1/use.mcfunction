tag @s add cp.owner
execute as @e[tag=magic21,distance=..5,scores={counter=..4}] if score @s owner = @a[tag=cp.owner,limit=1] playerdata run tag @s add cp.this
execute if entity @e[tag=cp.this] run scoreboard players add @e[tag=cp.this] counter3 1
execute as @e[tag=cp.this,limit=1] if score @s counter3 matches 160.. at @s run function items:skills/magic/21/skill1/levelup
execute if entity @e[tag=cp.this,limit=1] run playsound block.wool.step master @a ~ ~ ~ 0.6 1







tag @e[tag=cp.this] remove cp.this
tag @s remove cp.owner