$data remove storage cpvp:attackdata $(player)
$execute store result storage cpvp:attackdata $(player).player byte 1 run scoreboard players get @a[tag=meleeatkertmp,limit=1] playerdata
$execute unless items entity @a[tag=meleeatkertmp,limit=1] weapon.mainhand *[custom_data~{cpvp:{custommeleelog:1b}}] run data modify storage cpvp:attackdata $(player) set value {id:0b,item_type:"weapon",attacktype:"melee"}
$execute if entity @s[advancements={system:ehpprojectile=false}] run data modify storage cpvp:attackdata $(player).id set from entity @a[tag=meleeatkertmp,limit=1] SelectedItem.components."minecraft:custom_data".cpvp.id
$execute if entity @s[advancements={system:ehpprojectile=false}] run data modify storage cpvp:attackdata $(player).itemtype set from entity @a[tag=meleeatkertmp,limit=1] SelectedItem.components."minecraft:custom_data".cpvp.item_type
$execute if entity @s[advancements={system:ehpprojectile=false}] run data modify storage cpvp:attackdata $(player).attacktype set value melee
#弓作るのやだ...やめてよお...
$execute if entity @s[advancements={system:ehpprojectile=true}] run data modify storage cpvp:attackdata $(player).attacktype set value shot
$execute if entity @s[advancements={system:ehpprojectile=true}] run data modify storage cpvp:attackdata $(player).id set from storage cpvp:gun id
$execute if entity @s[advancements={system:ehpprojectile=true}] run data modify storage cpvp:attackdata $(player).itemtype set value gun