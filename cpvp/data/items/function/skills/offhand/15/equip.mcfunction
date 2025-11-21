function effects:effect_modifier_gain {id:2,target:debuff,duration_add:0,duration_multiply:1.25,level:0,type:active}
execute at @s run particle dust{color:6231715,scale:1} ~ ~1 ~ 0.3 0.6 0.3 0 12 normal
execute at @s run playsound block.enchantment_table.use player @s ~ ~ ~ 1 1 1 