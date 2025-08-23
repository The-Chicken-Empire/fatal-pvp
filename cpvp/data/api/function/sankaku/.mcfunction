#data modify storage api: sankaku.theta set value 1

execute store result storage api: sankaku.theta float -1 run data get storage api: sankaku.theta
function api:sankaku/summon with storage api: sankaku

data modify storage api: sankaku.sin set from entity @e[limit=1,tag=api.theta.tag] Pos[0]
data modify storage api: sankaku.cos set from entity @e[limit=1,tag=api.theta.tag] Pos[2]
kill @e[tag=api.theta.tag]