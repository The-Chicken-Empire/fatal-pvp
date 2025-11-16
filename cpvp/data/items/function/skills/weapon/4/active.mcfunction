#mp減少
scoreboard players operation @s mp -= @s mpcost
#接地してたら強いモーション、そうでないなら弱いモーション
execute if entity @s[nbt={OnGround:true}] run function api:motion/rotation_and_y {power:7,y:5}
execute if entity @s[nbt={OnGround:false}] run function api:motion/rotation_and_y {power:5,y:10}
#自分がweapon4を使っているという情報
tag @s add weapon4player
#マーカーを準備
summon marker ~ ~ ~ {Tags:["skillmarker","weapon4marker","tmp"]}
function items:skills/insert_playerdata
tag @n[tag=weapon4marker,tag=tmp] remove tmp
#CT付与
scoreboard players set $ct main 200
function api:ct/mainhand
