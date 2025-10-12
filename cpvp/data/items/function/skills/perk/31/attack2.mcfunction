execute unless entity @s[tag=perk31.skillacting.tmp] run return fail
#穢血の値によるダメージ量増加
scoreboard players set $tmp tmp 10
scoreboard players operation $tmp tmp *= @e[tag=perk31.skillacting.tmp,limit=1] tarnished_blood_stage
scoreboard players operation $damageadd damagecalc += $tmp tmp
scoreboard players reset $tmp tmp