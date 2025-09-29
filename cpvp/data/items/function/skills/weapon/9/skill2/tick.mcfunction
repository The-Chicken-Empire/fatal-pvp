tag @s add cp.this
execute as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner run tag @s add cp.owner
scoreboard players add @s counter 1
scoreboard players add @s counter2 1
scoreboard players add @s counter3 1
scoreboard players remove @s counter4 1
execute at @s run particle sweep_attack ~ ~ ~ 0 0 0 0 1
execute if score @s counter2 matches 20.. at @s run playsound ui.stonecutter.take_result master @a ~ ~ ~ 0.2 1
execute if score @s counter2 matches 20.. at @s run playsound item.mace.smash_ground_heavy master @a ~ ~ ~ 0.2 2
execute if score @s counter2 matches 20.. run scoreboard players set @s counter2 0
execute facing entity @a[tag=cp.owner,limit=1] eyes positioned ^ ^ ^-400 rotated as @s positioned ^ ^ ^-2050 facing entity @s feet positioned as @s run tp @s ^ ^ ^1.72 ~ ~
data modify storage tmp: tmp set value {axis:[0f,1f,0f],angle:0f}
execute store result storage tmp: tmp.angle float 0.5 run scoreboard players get @s counter3
data modify entity @s transformation.left_rotation set from storage tmp: tmp
data remove storage tmp: tmp


tag @a[tag=cp.owner] remove cp.owner
execute at @s if score @s counter4 matches ..-1 positioned ~-1 ~-1 ~-1 as @e[tag=playing,dx=1,dy=1,dz=1] unless score @s ownerteam = @a[tag=cp.this,limit=1] teamscore at @s run function items:skills/weapon/9/skill2/hit


tag @s remove cp.this

execute if score @s counter5 matches 5.. run kill
execute if score @s counter matches 900.. run kill