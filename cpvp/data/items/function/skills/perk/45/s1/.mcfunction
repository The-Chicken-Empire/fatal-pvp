tag @s add perk45this
execute unless entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] unless entity @s[nbt={active_effects:[{id:"minecraft:blindness"}]}] as @a[distance=..400,tag=playing] unless score @s teamscore = @a[tag=perk45this,limit=1] teamscore at @s run function items:skills/perk/45/s1/core




















tag @s remove perk45this