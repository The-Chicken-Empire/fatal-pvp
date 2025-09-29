
#特殊バフ時のスキル分岐
function effects:system/pick/ {id:28}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 1.. run tag @s add perk31.skillact
scoreboard players reset $tmp tmp

#穢血を保有していなかった場合実行
execute unless entity @s[tag=perk31.skillact] run function items:skills/perk/31/heal


#穢血を保有していた場合のスキル発動
execute if entity @s[tag=perk31.skillact,tag=!perk31.skillacting] run function items:skills/perk/31/activation

#スキル発動中の食いしばり
execute if entity @s[tag=perk31.skillacting] if score @s hp matches ..0 run scoreboard players set @s hp 1