function effects:system/pick/ {id:48}
execute store result score $tmp tmp run data get storage effect: targeteffect.level

execute if score $tmp tmp matches 1..6 run particle dust{color:16751872,scale:1} ~ ~2.4 ~ 0 0 0 0 0 force @a[tag=weapon18playertmp]
execute if score $tmp tmp matches 7.. run particle dust{color:16711680,scale:1} ~ ~2.4 ~ 0 0 0 0 0 force @a[tag=weapon18playertmp]

scoreboard players reset $tmp tmp