scoreboard players operation @s mp -= @s mpcost
scoreboard players set $ct main 280
function api:ct/mainhand

tag @s add cp.owner
execute summon marker run function items:skills/magic/24/skill1/summon
tag @s remove cp.owner
particle minecraft:sculk_soul ~ ~1 ~ 0 0 0 0.3 10
playsound minecraft:block.respawn_anchor.charge master @s ~ ~1 ~ 1 1
tellraw @s [{"text":"<生体補完マシンβ>","color":"dark_purple"},{"text":":","color":"white"},{"text":"生体情報ヲ格納シマシタ","color":"blue"}]
