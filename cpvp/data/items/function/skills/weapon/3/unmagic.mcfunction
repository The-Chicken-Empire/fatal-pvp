setblock 0 0 0 shulker_box replace
item replace block 0 0 0 container.0 from entity @s weapon.mainhand
item modify block 0 0 0 container.0 items:weapon/3/unmagiced
data remove block 0 0 0 Items[0].components."minecraft:custom_data".cpvp.magiced
item replace entity @s weapon.mainhand from block 0 0 0 container.0
setblock 0 0 0 air

tag @s add weapon3unmagic
execute as @e[type=marker] if score @s owner = @a[tag=weapon3unmagic,limit=1] playerdata run kill @s
tag @s remove weapon3unmagic