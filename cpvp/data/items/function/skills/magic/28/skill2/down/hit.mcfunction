tag @s remove cp.hit
scoreboard players operation @s damagetaken = @e[tag=cp.this,limit=1] counter3
scoreboard players operation @s damagetaken *= $5 main
scoreboard players operation @s damagetaken *= $5 main
scoreboard players add @s damagetaken 50
data modify storage atktrigger: hage set value {itemtype:magic,id:28,atktype:1}
tag @s[tag=!cp.owner] add physicaldamage
tag @s[tag=cp.owner] add specialdamage
tag @s add meleedamage
tag @s add nodamagehop
scoreboard players operation @s attackerdata = @a[tag=cp.owner,limit=1] playerdata
function damage:atkercheck