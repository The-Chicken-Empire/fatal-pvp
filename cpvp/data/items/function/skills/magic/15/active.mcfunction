tag @s add magic15tmp

execute at @s summon marker run function items:skills/magic/15/summonmarker
execute at @s run playsound entity.wither.ambient hostile @a ~ ~ ~ 1 2 0
execute at @s run particle portal ~ ~ ~ 0.3 0.5 0.3 0.4 30 normal

tag @s remove magic15tmp

function system:cooltime/general/set_ct_mainhand {cooltime:360}