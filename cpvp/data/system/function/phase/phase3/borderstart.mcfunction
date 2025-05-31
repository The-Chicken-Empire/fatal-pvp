summon minecraft:armor_stand 0 -60 0 {Tags:[border_marker]}
spreadplayers 0 0 0 55 true @e[tag=border_marker]
execute at @e[tag=border_marker] run worldborder center ~ ~
worldborder set 150 0
worldborder set 15 10
kill @e[tag=border_marker]
bossbar set gametimer visible false