#死亡診断書
tellraw @a [{"italic":false,"selector":"@s"},{"italic":false,"text":"は死んだ","color":white}]
execute at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 1 0.8 1
#使用後処理
data modify storage dummy rename set value {"color":"gray","italic":false,"text":"死亡診断書"}
function items:skills/item/itemmodify