#防具変化
execute if items entity @s[tag=!w17activated] armor.chest *[custom_data~{cpvp:{id:19b}}] run function items:skills/weapon/17/palm
execute if items entity @s[tag=!w17activated] armor.chest *[custom_data~{cpvp:{id:20b}}] run function items:skills/weapon/17/wing
function effects:system/modify/ {id:21,duration:16,level:1}
tag @s remove w17activated

#ct
scoreboard players set $ct main 560
function api:ct/mainhand