$function items:generate/$(item_type)/$(id)/generate

data remove block 0 0 0 Items.[0].components."minecraft:custom_data".cpvp.magiced
item modify block 0 0 0 container.0 items:weapon/3/unmagiced
item replace entity @s weapon.offhand from block 0 0 0 container.0