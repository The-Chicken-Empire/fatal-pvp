#自分のteamscoreとplayerdataをtmpと付いたエンティティのteamscoreとownerに代入
scoreboard players operation @n[tag=tmp] teamscore = @s teamscore
scoreboard players operation @n[tag=tmp] owner = @s playerdata
#実行者がプレイヤーでなかった場合、ownerをownerに代入
execute if entity @s[type=!player] run scoreboard players operation @n[tag=tmp] owner = @s owner

#この程度のコマンドをわざわざ.mcfunctionで分ける必要はあるのか?
#↑なんと、余計なコマンドが1個増えることになるのでこの上なく要らない
