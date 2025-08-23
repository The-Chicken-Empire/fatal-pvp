
execute unless items entity @s armor.chest *[custom_data~{cpvp:{id:4b,item_type:"chestplate"}}] run function items:skills/helmet/5/false
execute if items entity @s armor.chest *[custom_data~{cpvp:{id:4b,item_type:"chestplate"}}] run function items:skills/helmet/5/true
