#実行者:ネザライト剣のディスプレイ[tag=perk31.mk2]
#構造物以外にターゲットを付与
execute as @e[tag=playing,tag=!construction] unless score @s teamscore = @e[tag=perk31.mk1.tmp,limit=1] teamscore run tag @s add perk31.target
#ターゲットの中にプレイヤーがいるか検知
execute as @a[tag=perk31.target] unless score @s teamscore = @e[tag=perk31.mk1.tmp,limit=1] teamscore run tag @s add perk31.playercheck
#プレイヤーがいた場合、プレイヤー以外のターゲットを削除
execute if entity @e[tag=perk31.playercheck] run tag @e[tag=perk31.target,type=!player] remove perk31.target
tag @e[tag=perk31.playercheck] remove perk31.playercheck
#最寄りのターゲットを指定、マーカー3を召喚
execute at @s at @e[tag=perk31.target,limit=1,sort=nearest] summon marker run function items:skills/perk/31/markersummon2
#最寄りのマーカー3に視点を向ける
execute at @s facing entity @e[tag=perk31.mk3,sort=nearest,limit=1] feet run rotate @s ~ ~
#音
execute at @s run playsound item.trident.throw player @a ~ ~ ~ 10 1
#タグ消し
tag @e[tag=perk31.target] remove perk31.target
