function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:0}
function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:1}
function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:2}
function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:3}
function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:4}
function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:5}
function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:6}
function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:7}
function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:8}


execute at @s run playsound entity.wither.death hostile @a ~ ~ ~ 1 2 0
execute at @s run particle end_rod ~ ~1 ~ 0.4 0.8 0.4 0.05 50
execute at @s run particle enchanted_hit ~ ~1 ~ 0.4 0.8 0.4 0.02 20
execute at @s run particle soul_fire_flame ~ ~1 ~ 0 0 0 0.1 10

tellraw @s [{"text":"[","color":"yellow"},{"text":"運命の箱","color":"yellow"},{"text":"] ","color":"yellow"},{"text":"ホットバーにある全てのアイテムの","color":"white"},{"text":"CT","color":"dark_aqua"},{"text":"を","color":"white"},{"text":"0","color":"yellow"},{"text":"にした！","color":"white"}]