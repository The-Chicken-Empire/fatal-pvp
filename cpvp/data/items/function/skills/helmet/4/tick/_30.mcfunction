effect give @s darkness 100 10 true
execute unless entity @e[tag=seraph._30,limit=1,tag=cp.this] at @s run function stats:statscalc
tag @e[tag=cp.this,limit=1] add seraph._30
