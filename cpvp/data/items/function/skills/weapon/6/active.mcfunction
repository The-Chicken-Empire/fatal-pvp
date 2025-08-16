tag @s add weapon6tmp

execute at @s summon marker run function items:skills/weapon/6/summonmarker

tag @s remove weapon6tmp
function system:cooltime/general/set_ct_mainhand {cooltime:300}