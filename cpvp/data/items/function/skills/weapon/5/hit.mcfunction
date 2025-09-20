execute if score @s teamscore = @e[limit=1,tag=weapon5-2] teamscore run return fail
execute if score @s teamscore = @e[limit=1,tag=w5.2marker-2] teamscore run return fail

#斬撃に1tick中に1回のみ当たるように
tag @s add weapon5previctmp
execute as @e[tag=w5.2marker-2] if score @s teamscore = @e[tag=weapon5previctmp,limit=1] teamscore as @e[tag=weapon5previctmp] run return run tag @s remove weapon5previctmp
tag @s remove weapon5previctmp
tag @s add weapon5victmp

scoreboard players operation @s attackerdata = @e[tag=weapon5-2,limit=1] playerdata
scoreboard players operation @s attackerdata = @e[tag=w5.2marker-2,limit=1] owner

#damege種類
tag @s add physicaldamage
tag @s add meleedamage
#damage量
scoreboard players set @s damagetaken 120
#
data modify storage atktrigger: hage set value {itemtype:weapon,id:5,atktype:1}
#attackercheck
function damage:atkercheck