execute if items entity @s weapon.mainhand *[custom_data~{cpvp:{item_type:"weapon"}}] unless score $tmp tmp matches 1 store result score $tmp tmp run function items:skills/weapon/5/buffdone
