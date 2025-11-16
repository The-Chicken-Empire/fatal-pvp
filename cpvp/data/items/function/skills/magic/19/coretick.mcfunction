tag @s add magic19coretmp

execute as @a if score @s playerdata = @e[tag=magic19coretmp,limit=1] owner run tag @s add magic19tmp2
execute unless items entity @a[tag=magic19tmp2,limit=1] weapon.mainhand *[minecraft:custom_data~{cpvp:{id:19b,item_type:"magic"}}] as @a[tag=magic19tmp2] at @s run playsound block.beacon.deactivate block @s ~ ~ ~ 1 1 1 
execute unless items entity @a[tag=magic19tmp2,limit=1] weapon.mainhand *[minecraft:custom_data~{cpvp:{id:19b,item_type:"magic"}}] run function items:skills/magic/19/delete
execute as @a[tag=magic19tmp2] anchored eyes at @s positioned ^ ^ ^ rotated as @e[tag=magic19tmp2,limit=1] run tp @e[tag=magic19coretmp] ~ ~ ~ ~ ~

#execute if score @s skills matches 5 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[3f,3f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,1f]}

execute if score @s skills matches 0..36 at @a[tag=magic19tmp2] run particle dust_color_transition{from_color:3175167,to_color:10566911,scale:1} ~ ~1 ~ 0.3 0.6 0.3 1 1
execute if score @s skills matches 0..36 at @a[tag=magic19tmp2] run particle dust_color_transition{to_color:3175167,from_color:10566911,scale:1} ~ ~1 ~ 0.3 0.6 0.3 1 1
execute if score @s skills matches 0..36 if score @s counting matches 1.. at @a[tag=magic19tmp2] run particle enchant ~ ~1 ~ 0 0 0 0.3 4 normal
execute if score @s skills matches 0..36 if score @s counting matches 2.. at @a[tag=magic19tmp2] run particle soul_fire_flame ~ ~1 ~ 0 0 0 0.15 1 normal
execute if score @s skills matches 0..36 if score @s counting matches 3 at @a[tag=magic19tmp2] run particle end_rod ~ ~1 ~ 0.4 0.7 0.4 0.3 1 normal

execute if score @s skills matches 2 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1 0
execute if score @s skills matches 4 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1 0
execute if score @s skills matches 6 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.1 0
execute if score @s skills matches 8 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.1 0
execute if score @s skills matches 10 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.2 0
execute if score @s skills matches 12 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 14 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.3 0
execute if score @s skills matches 16 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.4 0
execute if score @s skills matches 18 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.4 0
execute if score @s skills matches 20 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.5 0
execute if score @s skills matches 22 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.5 0
execute if score @s skills matches 24 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.6 0
execute if score @s skills matches 26 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.6 0
execute if score @s skills matches 28 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.7 0
execute if score @s skills matches 30 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.7 0
execute if score @s skills matches 32 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.8 0
execute if score @s skills matches 34 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.8 0
execute if score @s skills matches 36 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.9 0
execute if score @s skills matches 38 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 1.9 0
execute if score @s skills matches 40 at @s run playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 2 0

execute if score @s skills matches 20..80 at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 2 0
execute if score @s skills matches 20..80 at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 2 0
execute if score @s skills matches 20..80 at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 2 0
execute if score @s counting matches 1 if score @s skills matches 81..100 at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 2 0
execute if score @s counting matches 1 if score @s skills matches 81..100 at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 2 0
execute if score @s counting matches 2 if score @s skills matches 81..120 at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 2 0
execute if score @s counting matches 2 if score @s skills matches 81..120 at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 2 0
execute if score @s counting matches 3 if score @s skills matches 81..140 at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 2 0
execute if score @s counting matches 3 if score @s skills matches 81..140 at @s run playsound block.bell.resonate block @a ~ ~ ~ 1 2 0

#execute if score @s skills matches 41.. as @e[tag=magic19ray] if score @s target = @e[tag=magic19coretmp,limit=1] markerid run kill @s
#execute if score @s counting matches 0 if score @s skills matches 40..100 at @s anchored feet positioned ^ ^ ^ summon item_display run function items:skills/magic/19/summonray
#execute if score @s counting matches 1 if score @s skills matches 40..120 at @s anchored feet positioned ^ ^ ^ summon item_display run function items:skills/magic/19/summonray
#execute if score @s counting matches 2 if score @s skills matches 40..140 at @s anchored feet positioned ^ ^ ^ summon item_display run function items:skills/magic/19/summonray
#execute if score @s counting matches 3 if score @s skills matches 40..160 at @s anchored feet positioned ^ ^ ^ summon item_display run function items:skills/magic/19/summonray
#execute if score @s skills matches 36.. as @e[tag=magic19ray] if score @s target = @e[tag=magic19coretmp,limit=1] markerid at @e[tag=magic19coretmp,limit=1] rotated as @e[tag=magic19tmp2,limit=1] run tp @s ~ ~ ~ ~ ~ 
#execute if score @s counting matches 0 if score @s skills matches 38 as @e[tag=magic19ray] if score @s target = @e[tag=magic19coretmp,limit=1] markerid run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,25f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,12.5f]}
#execute if score @s counting matches 1 if score @s skills matches 38 as @e[tag=magic19ray] if score @s target = @e[tag=magic19coretmp,limit=1] markerid run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0.75f,0.75f,25f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,12.5f]}
#execute if score @s counting matches 2 if score @s skills matches 38 as @e[tag=magic19ray] if score @s target = @e[tag=magic19coretmp,limit=1] markerid run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[1f,1f,25f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,12.5f]}
#execute if score @s counting matches 3 if score @s skills matches 38 as @e[tag=magic19ray] if score @s target = @e[tag=magic19coretmp,limit=1] markerid run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[1.25f,1.25f,25f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,12.5f]}

scoreboard players remove @s counting2 1
execute if score @s counting2 matches 0 at @s summon marker run function items:skills/magic/19/summonhitcheck
execute if score @s counting2 matches 0 if score @s counting matches 0 if score @s skills matches 40..100 as @e[tag=magic19hc,limit=1] run function items:skills/magic/19/loop1
execute if score @s counting2 matches 0 if score @s counting matches 1 if score @s skills matches 40..120 as @e[tag=magic19hc,limit=1] run function items:skills/magic/19/loop2
execute if score @s counting2 matches 0 if score @s counting matches 2 if score @s skills matches 40..140 as @e[tag=magic19hc,limit=1] run function items:skills/magic/19/loop3
execute if score @s counting2 matches 0 if score @s counting matches 3 if score @s skills matches 40..160 as @e[tag=magic19hc,limit=1] run function items:skills/magic/19/loop4
execute as @e[tag=magic19hit] run function items:skills/magic/19/hit
kill @e[tag=magic19hc]
tag @e[tag=magic19hit] remove magic19hit
execute if score @s counting2 matches 0 run scoreboard players set @s counting2 2

#execute if score @s counting matches 0 if score @s skills matches 100 as @e[tag=magic19ray] if score @s target = @e[tag=magic19coretmp,limit=1] markerid run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0f,25f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,12.5f]}
#execute if score @s counting matches 1 if score @s skills matches 120 as @e[tag=magic19ray] if score @s target = @e[tag=magic19coretmp,limit=1] markerid run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0f,25f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,12.5f]}
#execute if score @s counting matches 2 if score @s skills matches 140 as @e[tag=magic19ray] if score @s target = @e[tag=magic19coretmp,limit=1] markerid run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0f,25f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,12.5f]}
#execute if score @s counting matches 3 if score @s skills matches 160 as @e[tag=magic19ray] if score @s target = @e[tag=magic19coretmp,limit=1] markerid run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0f,25f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,12.5f]}

#execute if score @s counting matches 0 if score @s skills matches 105 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,1f]}
#execute if score @s counting matches 1 if score @s skills matches 125 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,1f]}
#execute if score @s counting matches 2 if score @s skills matches 145 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,1f]}
#execute if score @s counting matches 3 if score @s skills matches 165 run data modify entity @s transformation set value {right_rotation:[0f,0f,0f,1f],scale:[0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,1f]}

execute if score @s counting matches 0 if score @s skills matches 120.. run function items:skills/magic/19/delete
execute if score @s counting matches 1 if score @s skills matches 140.. run function items:skills/magic/19/delete
execute if score @s counting matches 2 if score @s skills matches 160.. run function items:skills/magic/19/delete
execute if score @s counting matches 3 if score @s skills matches 180.. run function items:skills/magic/19/delete

tag @e[tag=magic19tmp2] remove magic19tmp2
tag @s remove magic19coretmp