summon item ~ ~ ~ {Tags:["cp.tmp","skillmarker","seraph_feather2"],Item:{id:golden_hoe,components:{custom_model_data:{strings:["seraph_feather2"]}}}}



scoreboard players operation @e[tag=cp.tmp] owner = @s owner
scoreboard players operation @e[tag=cp.tmp] ownerteam = @s ownerteam
tag @e[tag=cp.tmp] remove cp.tmp
particle explosion ~ ~ ~ 0 0 0 2 1
playsound entity.generic.explode master @a ~ ~ ~ 1 2

kill