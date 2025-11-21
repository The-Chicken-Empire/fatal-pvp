function effects:system/pick/ {id:46}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
tellraw @s [{score:{objective:tmp,name:"$tmp"}}]
scoreboard players reset $tmp tmp




execute store result storage wepon4ct: slot int 1 run data get entity @s Inventory.[{components:{custom_data:{cpvp:{id:4,item_type:weapon}}}}].Slot