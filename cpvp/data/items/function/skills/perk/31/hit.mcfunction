execute if score @s teamscore = @e[limit=1,tag=perk31.skillacting.tmp] teamscore run return fail

#攻撃者識別
scoreboard players operation @s attackerdata = @e[tag=perk31.skillacting.tmp,limit=1] playerdata

#damege種類
tag @s add physicaldamage
tag @s add rangedamage
#damage量
scoreboard players set @s damagetaken 200
#
data modify storage atktrigger: hage set value {itemtype:perk,id:31,atktype:1}
#出血付与の予定
# function effects:system/modify/ {}
#attackercheck
function damage:atkercheck