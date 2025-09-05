tag @s add offhand6tmp
scoreboard players set @s offhand6 0

execute summon marker run function items:skills/offhand/6/summonmarker
function effects:system/gain/ {id:5,level:4,duration:120}

function system:cooltime/general/set_ct_offhand {cooltime:300}
tag @s remove offhand6tmp