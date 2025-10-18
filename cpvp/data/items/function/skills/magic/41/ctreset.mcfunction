execute store result score $tmp1 tmp run function system:cooltime/general/get_ct_by_slot {slot:0}
execute store result score $tmp2 tmp run function system:cooltime/general/get_ct_by_slot {slot:1}
execute store result score $tmp3 tmp run function system:cooltime/general/get_ct_by_slot {slot:2}
execute store result score $tmp4 tmp run function system:cooltime/general/get_ct_by_slot {slot:3}
execute store result score $tmp5 tmp run function system:cooltime/general/get_ct_by_slot {slot:4}
execute store result score $tmp6 tmp run function system:cooltime/general/get_ct_by_slot {slot:5}
execute store result score $tmp7 tmp run function system:cooltime/general/get_ct_by_slot {slot:6}
execute store result score $tmp8 tmp run function system:cooltime/general/get_ct_by_slot {slot:7}
execute store result score $tmp9 tmp run function system:cooltime/general/get_ct_by_slot {slot:8}

scoreboard players set $m41slottmp tmp 0
execute store result score $m41slottmp tmp run data get entity @s Inventory.[{components:{"minecraft:custom_data":{cpvp:{item_type:magic,id:41b}}}}].Slot

execute if score $m41slottmp tmp matches 0 run scoreboard players set $tmp1 tmp -1
execute if score $m41slottmp tmp matches 1 run scoreboard players set $tmp2 tmp -1
execute if score $m41slottmp tmp matches 2 run scoreboard players set $tmp3 tmp -1
execute if score $m41slottmp tmp matches 3 run scoreboard players set $tmp4 tmp -1
execute if score $m41slottmp tmp matches 4 run scoreboard players set $tmp5 tmp -1
execute if score $m41slottmp tmp matches 5 run scoreboard players set $tmp6 tmp -1
execute if score $m41slottmp tmp matches 6 run scoreboard players set $tmp7 tmp -1
execute if score $m41slottmp tmp matches 7 run scoreboard players set $tmp8 tmp -1
execute if score $m41slottmp tmp matches 8 run scoreboard players set $tmp9 tmp -1
scoreboard players reset $m41slottmp

scoreboard players set $m41tmp tmp 1
scoreboard players operation $m41tmp tmp2 = $tmp1 tmp

execute if score $m41tmp tmp2 < $tmp2 tmp run scoreboard players set $m41tmp tmp 2
execute if score $m41tmp tmp2 < $tmp2 tmp run scoreboard players operation $m41tmp tmp2 = $tmp2 tmp
execute if score $m41tmp tmp2 < $tmp3 tmp run scoreboard players set $m41tmp tmp 3
execute if score $m41tmp tmp2 < $tmp3 tmp run scoreboard players operation $m41tmp tmp2 = $tmp3 tmp
execute if score $m41tmp tmp2 < $tmp4 tmp run scoreboard players set $m41tmp tmp 4
execute if score $m41tmp tmp2 < $tmp4 tmp run scoreboard players operation $m41tmp tmp2 = $tmp4 tmp
execute if score $m41tmp tmp2 < $tmp5 tmp run scoreboard players set $m41tmp tmp 5
execute if score $m41tmp tmp2 < $tmp5 tmp run scoreboard players operation $m41tmp tmp2 = $tmp5 tmp
execute if score $m41tmp tmp2 < $tmp6 tmp run scoreboard players set $m41tmp tmp 6
execute if score $m41tmp tmp2 < $tmp6 tmp run scoreboard players operation $m41tmp tmp2 = $tmp6 tmp
execute if score $m41tmp tmp2 < $tmp7 tmp run scoreboard players set $m41tmp tmp 7
execute if score $m41tmp tmp2 < $tmp7 tmp run scoreboard players operation $m41tmp tmp2 = $tmp7 tmp
execute if score $m41tmp tmp2 < $tmp8 tmp run scoreboard players set $m41tmp tmp 8
execute if score $m41tmp tmp2 < $tmp8 tmp run scoreboard players operation $m41tmp tmp2 = $tmp8 tmp
execute if score $m41tmp tmp2 < $tmp9 tmp run scoreboard players set $m41tmp tmp 9
execute if score $m41tmp tmp2 < $tmp9 tmp run scoreboard players operation $m41tmp tmp2 = $tmp9 tmp

execute if score $m41tmp tmp2 matches ..0 run return run function items:skills/magic/41/noitem

execute if score $m41tmp tmp matches 1 run function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:0}
execute if score $m41tmp tmp matches 2 run function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:1}
execute if score $m41tmp tmp matches 3 run function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:2}
execute if score $m41tmp tmp matches 4 run function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:3}
execute if score $m41tmp tmp matches 5 run function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:4}
execute if score $m41tmp tmp matches 6 run function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:5}
execute if score $m41tmp tmp matches 7 run function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:6}
execute if score $m41tmp tmp matches 8 run function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:7}
execute if score $m41tmp tmp matches 9 run function system:cooltime/general/set_ct_by_slot {cooltime:0,slot:8}
function items:skills/magic/41/slottellraw

scoreboard players reset $tmp
#scoreboard players reset $m41tmp
scoreboard players reset $tmp1
scoreboard players reset $tmp2
scoreboard players reset $tmp3
scoreboard players reset $tmp4
scoreboard players reset $tmp5
scoreboard players reset $tmp6
scoreboard players reset $tmp7
scoreboard players reset $tmp8
scoreboard players reset $tmp9