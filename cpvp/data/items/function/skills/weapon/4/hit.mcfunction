#チーム判別(同チームなら以降のコマンドを実行しない)
execute if score @s teamscore = @n[tag=weapon4player.tmp] teamscore run return fail
#斬撃に1tick中に1回のみ当たるように
execute if entity @s[tag=weapon4vic.tmp] run return fail
tag @s add weapon4vic.tmp
#攻撃者データのスコアを取得
scoreboard players operation @s attackerdata = @e[tag=weapon4player.tmp,limit=1] playerdata
#下の条件が達成されたという音
execute as @n[tag=weapon4player.tmp,tag=!weapon4hit] at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 1 2
#ヒットしたという条件を取る
tag @n[tag=weapon4player.tmp] add weapon4hit
#damage種類
tag @s add physicaldamage
tag @s add meleedamage
#damage量
scoreboard players set @s damagetaken 30

#攻撃のデータ
data modify storage atktrigger: hage set value {itemtype:weapon,id:4,atktype:1}
#attackercheck
function damage:atkercheck
