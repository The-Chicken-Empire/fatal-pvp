tag @s add magic37this
execute as @a[scores={using=1..}] if items entity @s weapon.mainhand *[minecraft:custom_data~{cpvp:{id:37b,item_type:"magic"}}] if score @s playerdata = @e[tag=magic37this,limit=1] owner run tag @s add magic37owner
execute unless entity @a[tag=magic37owner] run kill

execute as @a[tag=magic37owner,limit=1] at @s anchored eyes positioned ^ ^ ^3 run tp @e[tag=magic37this,limit=1] ~ ~ ~ ~ ~


tag @a[tag=magic37owner] remove magic37owner
tag @s remove magic37this

