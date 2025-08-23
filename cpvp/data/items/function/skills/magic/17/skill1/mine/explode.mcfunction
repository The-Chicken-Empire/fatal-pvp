summon item ~ ~ ~ {Tags:["cp.tmp","skillmarker","seraph_feather2"],Item:{id:golden_hoe,components:{custom_model_data:{strings:["seraph_feather2"]}}},Invulnerable:1b,PickupDelay:32767,Motion:[0.1f,0.4f,0.1f]}
summon item ~ ~ ~ {Tags:["cp.tmp","skillmarker","seraph_feather2"],Item:{id:golden_hoe,components:{custom_model_data:{strings:["seraph_feather2"]}}},Invulnerable:1b,PickupDelay:32767,Motion:[0.1f,0.4f,-0.1f]}
summon item ~ ~ ~ {Tags:["cp.tmp","skillmarker","seraph_feather2"],Item:{id:golden_hoe,components:{custom_model_data:{strings:["seraph_feather2"]}}},Invulnerable:1b,PickupDelay:32767,Motion:[-0.1f,0.4f,0.1f]}
summon item ~ ~ ~ {Tags:["cp.tmp","skillmarker","seraph_feather2"],Item:{id:golden_hoe,components:{custom_model_data:{strings:["seraph_feather2"]}}},Invulnerable:1b,PickupDelay:32767,Motion:[-0.1f,0.4f,-0.1f]}



scoreboard players operation @e[tag=cp.tmp] owner = @s owner
scoreboard players operation @e[tag=cp.tmp] ownerteam = @s ownerteam
tag @e[tag=cp.tmp] remove cp.tmp
particle explosion ~ ~ ~ 0 0 0 0.5 1
playsound entity.generic.explode master @a ~ ~ ~ 1 2

kill