summon marker 0 0 0 {Tags:["unset","gun12marker"]}
scoreboard players operation @e[tag=unset,limit=1] owner = @a[tag=victim,limit=1] playerdata
scoreboard players operation @e[tag=unset,limit=1] counter2 = @a[tag=atker,limit=1] playerdata
scoreboard players add @e[tag=unset,limit=1] counter 1
