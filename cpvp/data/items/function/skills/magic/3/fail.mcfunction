execute at @s run playsound entity.ghast.scream player @s ~ ~ ~ 0.5 1 0.5
tellraw @s {text:"----------------------------------------"}
tellraw @s {text:"...？何の反応もない"}
tellraw @s {text:"----------------------------------------"}
function system:cooltime/general/set_ct_mainhand {cooltime:600}
data modify storage dummy rename set value {"color":"dark_blue","italic":false,"text":"Information"}
function items:skills/item/itemmodify