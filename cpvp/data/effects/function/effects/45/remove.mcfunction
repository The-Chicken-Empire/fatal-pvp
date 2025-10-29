execute if entity @s[tag=effect45.remove] run return run tag @s remove effect45.remove
execute if score @s[tag=!effect45.remove] effect45.count matches ..4 run scoreboard players add @s effect45.count 1
execute if score @s[tag=!effect45.remove] effect45.count matches 1 run function effects:system/modify/ {id:45,duration:600,level:1}
execute if score @s[tag=!effect45.remove] effect45.count matches 2 run function effects:system/modify/ {id:45,duration:600,level:2}
execute if score @s[tag=!effect45.remove] effect45.count matches 3 run function effects:system/modify/ {id:45,duration:600,level:3}
execute if score @s[tag=!effect45.remove] effect45.count matches 4 run function effects:system/modify/ {id:45,duration:600,level:4}
execute if score @s[tag=!effect45.remove] effect45.count matches 5 run function effects:system/modify/ {id:45,duration:600,level:5}
