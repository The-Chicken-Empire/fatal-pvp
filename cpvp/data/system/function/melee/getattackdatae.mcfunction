$data remove storage cpvp:attackdatae $(entity)
$execute store result storage cpvp:attackdatae $(entity).player byte 1 run scoreboard players get @a[tag=atkertmp,limit=1] playerdata
#$execute unless items entity @a[tag=atkertmp,limit=1] weapon.mainhand *[custom_data~{cpvp:{custommeleelog:1b}}] run data modify storage cpvp:attackdatae $(entity) set value {id:0b,item_type:"weapon",attacktype:"melee"}
$execute if entity @e[advancements={system:projectile=false}] run data modify storage cpvp:attackdatae $(entity).id set from entity @a[tag=atkertmp,limit=1] SelectedItem.components."minecraft:custom_data".cpvp.id
$execute if entity @e[advancements={system:projectile=false}] run data modify storage cpvp:attackdatae $(entity).itemtype set from entity @a[tag=atkertmp,limit=1] SelectedItem.components."minecraft:custom_data".cpvp.item_type
$execute if entity @e[advancements={system:projectile=false}] run data modify storage cpvp:attackdatae $(entity).attacktype set value melee